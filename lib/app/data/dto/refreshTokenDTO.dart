import 'package:freezed_annotation/freezed_annotation.dart';

part 'refreshTokenDTO.freezed.dart';
part 'refreshTokenDTO.g.dart';

@freezed
class RefreshTokenDTO with _$RefreshTokenDTO {

  factory RefreshTokenDTO({
    required String accessToken,
    required String refreshToken, 
  }) = _RefreshTokenDTO;

  factory RefreshTokenDTO.fromJson(Map<String, dynamic> json) => _$RefreshTokenDTOFromJson(json);
}