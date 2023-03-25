// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'addressDTO.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddressDTO _$AddressDTOFromJson(Map<String, dynamic> json) {
  return _AddressDTO.fromJson(json);
}

/// @nodoc
mixin _$AddressDTO {
  int get id => throw _privateConstructorUsedError;
  String? get streetName => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressDTOCopyWith<AddressDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressDTOCopyWith<$Res> {
  factory $AddressDTOCopyWith(
          AddressDTO value, $Res Function(AddressDTO) then) =
      _$AddressDTOCopyWithImpl<$Res, AddressDTO>;
  @useResult
  $Res call({int id, String? streetName, String? city, String? country});
}

/// @nodoc
class _$AddressDTOCopyWithImpl<$Res, $Val extends AddressDTO>
    implements $AddressDTOCopyWith<$Res> {
  _$AddressDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? streetName = freezed,
    Object? city = freezed,
    Object? country = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      streetName: freezed == streetName
          ? _value.streetName
          : streetName // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddressDTOCopyWith<$Res>
    implements $AddressDTOCopyWith<$Res> {
  factory _$$_AddressDTOCopyWith(
          _$_AddressDTO value, $Res Function(_$_AddressDTO) then) =
      __$$_AddressDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String? streetName, String? city, String? country});
}

/// @nodoc
class __$$_AddressDTOCopyWithImpl<$Res>
    extends _$AddressDTOCopyWithImpl<$Res, _$_AddressDTO>
    implements _$$_AddressDTOCopyWith<$Res> {
  __$$_AddressDTOCopyWithImpl(
      _$_AddressDTO _value, $Res Function(_$_AddressDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? streetName = freezed,
    Object? city = freezed,
    Object? country = freezed,
  }) {
    return _then(_$_AddressDTO(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      streetName: freezed == streetName
          ? _value.streetName
          : streetName // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddressDTO implements _AddressDTO {
  _$_AddressDTO(
      {required this.id,
      required this.streetName,
      required this.city,
      required this.country});

  factory _$_AddressDTO.fromJson(Map<String, dynamic> json) =>
      _$$_AddressDTOFromJson(json);

  @override
  final int id;
  @override
  final String? streetName;
  @override
  final String? city;
  @override
  final String? country;

  @override
  String toString() {
    return 'AddressDTO(id: $id, streetName: $streetName, city: $city, country: $country)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddressDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.streetName, streetName) ||
                other.streetName == streetName) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.country, country) || other.country == country));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, streetName, city, country);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddressDTOCopyWith<_$_AddressDTO> get copyWith =>
      __$$_AddressDTOCopyWithImpl<_$_AddressDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddressDTOToJson(
      this,
    );
  }
}

abstract class _AddressDTO implements AddressDTO {
  factory _AddressDTO(
      {required final int id,
      required final String? streetName,
      required final String? city,
      required final String? country}) = _$_AddressDTO;

  factory _AddressDTO.fromJson(Map<String, dynamic> json) =
      _$_AddressDTO.fromJson;

  @override
  int get id;
  @override
  String? get streetName;
  @override
  String? get city;
  @override
  String? get country;
  @override
  @JsonKey(ignore: true)
  _$$_AddressDTOCopyWith<_$_AddressDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
