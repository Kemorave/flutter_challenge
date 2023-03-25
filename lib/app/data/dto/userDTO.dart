// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'addressDTO.dart';

part 'userDTO.freezed.dart';
part 'userDTO.g.dart';

@freezed
class UserDTO with _$UserDTO {
  factory UserDTO(int id, @JsonKey(name: 'username') String? name,
      String? email, AddressDTO? address) = _UserDTO;

  factory UserDTO.fromJson(Map<String, dynamic> json) =>
      _$UserDTOFromJson(json);
}
