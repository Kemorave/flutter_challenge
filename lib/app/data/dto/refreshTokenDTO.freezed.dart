// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'refreshTokenDTO.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RefreshTokenDTO _$RefreshTokenDTOFromJson(Map<String, dynamic> json) {
  return _RefreshTokenDTO.fromJson(json);
}

/// @nodoc
mixin _$RefreshTokenDTO {
  String get accessToken => throw _privateConstructorUsedError;
  String get refreshToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RefreshTokenDTOCopyWith<RefreshTokenDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefreshTokenDTOCopyWith<$Res> {
  factory $RefreshTokenDTOCopyWith(
          RefreshTokenDTO value, $Res Function(RefreshTokenDTO) then) =
      _$RefreshTokenDTOCopyWithImpl<$Res, RefreshTokenDTO>;
  @useResult
  $Res call({String accessToken, String refreshToken});
}

/// @nodoc
class _$RefreshTokenDTOCopyWithImpl<$Res, $Val extends RefreshTokenDTO>
    implements $RefreshTokenDTOCopyWith<$Res> {
  _$RefreshTokenDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RefreshTokenDTOCopyWith<$Res>
    implements $RefreshTokenDTOCopyWith<$Res> {
  factory _$$_RefreshTokenDTOCopyWith(
          _$_RefreshTokenDTO value, $Res Function(_$_RefreshTokenDTO) then) =
      __$$_RefreshTokenDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String accessToken, String refreshToken});
}

/// @nodoc
class __$$_RefreshTokenDTOCopyWithImpl<$Res>
    extends _$RefreshTokenDTOCopyWithImpl<$Res, _$_RefreshTokenDTO>
    implements _$$_RefreshTokenDTOCopyWith<$Res> {
  __$$_RefreshTokenDTOCopyWithImpl(
      _$_RefreshTokenDTO _value, $Res Function(_$_RefreshTokenDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_$_RefreshTokenDTO(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RefreshTokenDTO implements _RefreshTokenDTO {
  _$_RefreshTokenDTO({required this.accessToken, required this.refreshToken});

  factory _$_RefreshTokenDTO.fromJson(Map<String, dynamic> json) =>
      _$$_RefreshTokenDTOFromJson(json);

  @override
  final String accessToken;
  @override
  final String refreshToken;

  @override
  String toString() {
    return 'RefreshTokenDTO(accessToken: $accessToken, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RefreshTokenDTO &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken, refreshToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RefreshTokenDTOCopyWith<_$_RefreshTokenDTO> get copyWith =>
      __$$_RefreshTokenDTOCopyWithImpl<_$_RefreshTokenDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RefreshTokenDTOToJson(
      this,
    );
  }
}

abstract class _RefreshTokenDTO implements RefreshTokenDTO {
  factory _RefreshTokenDTO(
      {required final String accessToken,
      required final String refreshToken}) = _$_RefreshTokenDTO;

  factory _RefreshTokenDTO.fromJson(Map<String, dynamic> json) =
      _$_RefreshTokenDTO.fromJson;

  @override
  String get accessToken;
  @override
  String get refreshToken;
  @override
  @JsonKey(ignore: true)
  _$$_RefreshTokenDTOCopyWith<_$_RefreshTokenDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
