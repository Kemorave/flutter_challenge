import 'package:freezed_annotation/freezed_annotation.dart';


part 'address_dto.freezed.dart';
part 'address_dto.g.dart';

@freezed
class AddressDTO   with _$AddressDTO {
  factory AddressDTO({
    required int id,
    required String? streetName,
    required String? city,
    required String? country,
  }) = _AddressDTO;

  factory AddressDTO.fromJson(Map<String, dynamic> json) =>
      _$AddressDTOFromJson(json);
}
