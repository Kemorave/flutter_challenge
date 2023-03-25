// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loginResponceDTO.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginResponceDTO _$$_LoginResponceDTOFromJson(Map<String, dynamic> json) =>
    _$_LoginResponceDTO(
      user: UserDTO.fromJson(json['user'] as Map<String, dynamic>),
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String,
    );

Map<String, dynamic> _$$_LoginResponceDTOToJson(_$_LoginResponceDTO instance) =>
    <String, dynamic>{
      'user': instance.user,
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
    };
