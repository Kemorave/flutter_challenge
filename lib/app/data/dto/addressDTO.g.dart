// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'addressDTO.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddressDTO _$$_AddressDTOFromJson(Map<String, dynamic> json) =>
    _$_AddressDTO(
      id: json['id'] as int,
      streetName: json['streetName'] as String?,
      city: json['city'] as String?,
      country: json['country'] as String?,
    );

Map<String, dynamic> _$$_AddressDTOToJson(_$_AddressDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'streetName': instance.streetName,
      'city': instance.city,
      'country': instance.country,
    };
