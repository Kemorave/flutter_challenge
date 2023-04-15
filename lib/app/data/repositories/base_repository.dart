import 'dart:async';

import '../../../locator.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/request/request.dart';
import 'package:mutex/mutex.dart';

import '../../core/exceptions/repository_disposed_exception.dart';
import '../dto/refresh_token_dto.dart';

class BaseRepository {
  late GetConnect client = GetConnect(withCredentials: true);
  static final _lockMutex = Mutex();
  bool _disposed = false;
  BaseRepository({required String apiUrl}) {
    client.baseUrl = apiUrl;
    client.timeout = const Duration(seconds: 60);
    _onInit();
  }

  Future<Response<T>> _disposeContainer<T>(Future<Response<T>> future) {
    try {
      return future;
    } catch (e) {
      if (_disposed) {
        throw RepositoryDisposedException();
      }
      rethrow;
    }
  }

  Future<Response<T>> get<T>(
    String url, {
    Map<String, String>? headers,
    String? contentType,
    Map<String, dynamic>? query,
    Decoder<T>? decoder,
  }) {
    return _disposeContainer(client.get<T>(
      url,
      headers: headers,
      contentType: contentType,
      query: query,
      decoder: decoder,
    ));
  }

  Future<Response<T>> post<T>(
    String? url,
    dynamic body, {
    String? contentType,
    Map<String, String>? headers,
    Map<String, dynamic>? query,
    Decoder<T>? decoder,
    Progress? uploadProgress,
  }) {
    return _disposeContainer(client.post<T>(
      url,
      body,
      headers: headers,
      contentType: contentType,
      query: query,
      decoder: decoder,
      uploadProgress: uploadProgress,
    ));
  }

  Future<Response<T>> put<T>(
    String url,
    dynamic body, {
    String? contentType,
    Map<String, String>? headers,
    Map<String, dynamic>? query,
    Decoder<T>? decoder,
    Progress? uploadProgress,
  }) {
    return _disposeContainer(client.put<T>(
      url,
      body,
      headers: headers,
      contentType: contentType,
      query: query,
      decoder: decoder,
      uploadProgress: uploadProgress,
    ));
  }

  Future<Response<T>> patch<T>(
    String url,
    dynamic body, {
    String? contentType,
    Map<String, String>? headers,
    Map<String, dynamic>? query,
    Decoder<T>? decoder,
    Progress? uploadProgress,
  }) {
    return _disposeContainer(client.patch<T>(
      url,
      body,
      headers: headers,
      contentType: contentType,
      query: query,
      decoder: decoder,
      uploadProgress: uploadProgress,
    ));
  }

  Future<Response<T>> request<T>(
    String url,
    String method, {
    dynamic body,
    String? contentType,
    Map<String, String>? headers,
    Map<String, dynamic>? query,
    Decoder<T>? decoder,
    Progress? uploadProgress,
  }) {
    return _disposeContainer(client.request<T>(
      url,
      method,
      body: body,
      headers: headers,
      contentType: contentType,
      query: query,
      decoder: decoder,
      uploadProgress: uploadProgress,
    ));
  }

  Future<Response<T>> delete<T>(
    String url, {
    Map<String, String>? headers,
    String? contentType,
    Map<String, dynamic>? query,
    Decoder<T>? decoder,
  }) {
    return _disposeContainer(client.delete(
      url,
      headers: headers,
      contentType: contentType,
      query: query,
      decoder: decoder,
    ));
  }

  void _onInit() {
    client.httpClient.addRequestModifier<dynamic>(_attachHeaders);
    client.httpClient.addAuthenticator<dynamic>(_refreshToken);
    if (kDebugMode) {
      client.httpClient.addRequestModifier<dynamic>(_debugRequest);
      client.httpClient.addResponseModifier<dynamic>(_debugResponse);
    }
  }

  FutureOr<Request> _refreshToken(Request request) async {
    try {
      await _lockMutex.acquire();
      var refreshToken = await userService().getRefreshToken();
      if (refreshToken == null) return request;
      final lastAT = request.headers["x-access-token"];
      if (lastAT != (await _attachHeaders(request)).headers["x-access-token"]) {
        return request;
      }
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
      request.headers["Authorization"] =
          "Bearer ${await userService().getAccessToken()}";
    }
    return request;
  }

  FutureOr<Request> _debugRequest(Request request) async {
    Get.printInfo(
        info:
            "[Http request] for ${request.url.toString()} \nmethod:${request.method} \ncontent-type:${request.headers['content-type']}");
    return request;
  }

  FutureOr _debugResponse(Request request, Response response) async {
    Get.printInfo(
        info:
            "[Http response] for ${request.url.toString()} \ncode:${response.statusCode} \nbody:${response.bodyString}");
    return response;
  }

  dispose() {
    _disposed = true;
    client.dispose();
  }
}
