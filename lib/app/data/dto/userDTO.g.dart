// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'userDTO.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDTO _$$_UserDTOFromJson(Map<String, dynamic> json) => _$_UserDTO(
      json['id'] as int,
      json['username'] as String?,
      json['email'] as String?,
      json['address'] == null
          ? null
          : AddressDTO.fromJson(json['address'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserDTOToJson(_$_UserDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.name,
      'email': instance.email,
      'address': instance.address,
    };
