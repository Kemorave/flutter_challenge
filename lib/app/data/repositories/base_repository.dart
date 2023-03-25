import 'dart:async';

import 'package:flutter_application_1/locator.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/request/request.dart';
import 'package:mutex/mutex.dart';

import '../dto/refreshTokenDTO.dart';

class BaseRepository {
  late GetConnect client = GetConnect(withCredentials: true);
  static final _lockMutex = Mutex();
  BaseRepository({required String apiUrl}) {
    client.baseUrl = apiUrl;
    onInit();
  }

  void onInit() {
    client.httpClient.addRequestModifier<dynamic>(_attachHeaders);
    client.httpClient.addAuthenticator<dynamic>(_refreshToken);
  }

  FutureOr<Request> _refreshToken(Request request) async {
    try {
      await _lockMutex.acquire();
      var refreshToken = await userService().getRefreshToken();
      if (refreshToken == null) return request;
      var res = await client
          .post('/api/auth/refreshtoken', {'refreshToken': refreshToken});
      if (res.isOk) {
        var refreshDTO = RefreshTokenDTO.fromJson(res.body);
        await userService().setAccessToken(refreshDTO.accessToken);
        await userService().setRefreshToken(refreshDTO.refreshToken);
        await _attachHeaders(request);
      } else if (res.unauthorized || res.statusCode == 403) {
        await userService().setRefreshToken(null);
      }
      return request;
    } finally {
      _lockMutex.release();
    }
  }

  FutureOr<Request> _attachHeaders(Request request) async {
    if (await userService().isLogedIn()) {
      request.headers["x-access-token"] =
          "${await userService().getAccessToken()}";
    }
    return request;
  }
}
