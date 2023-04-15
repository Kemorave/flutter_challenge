import 'user_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart' ;

part 'login_responce_dto.freezed.dart';
part 'login_responce_dto.g.dart';

@freezed
class LoginResponceDTO with _$LoginResponceDTO {
  factory LoginResponceDTO({
    required  UserDTO user,
    required  String accessToken,
    required  String refreshToken,
  }) = _LoginResponceDTO;

  factory LoginResponceDTO.fromJson(Map<String, dynamic> json) =>
      _$LoginResponceDTOFromJson(json);
}


