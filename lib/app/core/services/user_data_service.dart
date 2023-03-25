import 'dart:convert';
import 'package:flutter_application_1/locator.dart';
import 'package:flutter_application_1/app/core/services/api/local_data_service.dart';
import 'package:get/get.dart';

import '../../data/dto/loginResponceDTO.dart';
import '../../data/dto/userDTO.dart';
import '../../data/model/user_model.dart';

class UserDataService extends GetxService {
  final String _userKey = 'userKSR';
  final String _tokenKey = 'tokenKSR';
  final String _refreshTokenKey = 'rtokenKSR';
  
  final LocalDataService _localDataService = localStorage();
  Future<bool> isLogedIn() => _localDataService.hasKey(_userKey);


  Future<UserModel?> getUser() async {
    if (!await _localDataService.hasKey(_userKey)) {
      return null;
    }
    var json = jsonDecode((await _localDataService.getKey(_userKey))!);
    var dto = UserDTO.fromJson(json);
    return UserModel(dto.name??"", dto.email??"", dto.id);
  }

  Future<void> login(LoginResponceDTO loginResponceDTO) async {
    await setUser(loginResponceDTO.user);
    await setRefreshToken(loginResponceDTO.refreshToken);
    await setAccessToken(loginResponceDTO.accessToken);
  }

  Future<void> logout() async {
    await _localDataService.removeKey(_userKey);
    await _localDataService.removeKey(_tokenKey);
    await _localDataService.removeKey(_refreshTokenKey);
  }

  Future<void> setUser(UserDTO user) {
    return _localDataService.setKey(_userKey, json.encode(user.toJson()));
  }

  Future<void> setAccessToken(String token) {
    return _localDataService.setKey(_tokenKey, token);
  }

  Future<String?> getAccessToken() {
    return _localDataService.getKey(_tokenKey);
  }

  Future<String?> getRefreshToken() {
    return _localDataService.getKey(_refreshTokenKey);
  }

  Future<void> setRefreshToken(String? token) {
    if (token == null) return _localDataService.removeKey(_refreshTokenKey);
    return _localDataService.setKey(_refreshTokenKey, token);
  }
}
