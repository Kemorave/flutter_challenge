// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'loginResponceDTO.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginResponceDTO _$LoginResponceDTOFromJson(Map<String, dynamic> json) {
  return _LoginResponceDTO.fromJson(json);
}

/// @nodoc
mixin _$LoginResponceDTO {
  UserDTO get user => throw _privateConstructorUsedError;
  String get accessToken => throw _privateConstructorUsedError;
  String get refreshToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginResponceDTOCopyWith<LoginResponceDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginResponceDTOCopyWith<$Res> {
  factory $LoginResponceDTOCopyWith(
          LoginResponceDTO value, $Res Function(LoginResponceDTO) then) =
      _$LoginResponceDTOCopyWithImpl<$Res, LoginResponceDTO>;
  @useResult
  $Res call({UserDTO user, String accessToken, String refreshToken});

  $UserDTOCopyWith<$Res> get user;
}

/// @nodoc
class _$LoginResponceDTOCopyWithImpl<$Res, $Val extends LoginResponceDTO>
    implements $LoginResponceDTOCopyWith<$Res> {
  _$LoginResponceDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? accessToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDTO,
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

  @override
  @pragma('vm:prefer-inline')
  $UserDTOCopyWith<$Res> get user {
    return $UserDTOCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LoginResponceDTOCopyWith<$Res>
    implements $LoginResponceDTOCopyWith<$Res> {
  factory _$$_LoginResponceDTOCopyWith(
          _$_LoginResponceDTO value, $Res Function(_$_LoginResponceDTO) then) =
      __$$_LoginResponceDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserDTO user, String accessToken, String refreshToken});

  @override
  $UserDTOCopyWith<$Res> get user;
}

/// @nodoc
class __$$_LoginResponceDTOCopyWithImpl<$Res>
    extends _$LoginResponceDTOCopyWithImpl<$Res, _$_LoginResponceDTO>
    implements _$$_LoginResponceDTOCopyWith<$Res> {
  __$$_LoginResponceDTOCopyWithImpl(
      _$_LoginResponceDTO _value, $Res Function(_$_LoginResponceDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? accessToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_$_LoginResponceDTO(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDTO,
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
class _$_LoginResponceDTO implements _LoginResponceDTO {
  _$_LoginResponceDTO(
      {required this.user,
      required this.accessToken,
      required this.refreshToken});

  factory _$_LoginResponceDTO.fromJson(Map<String, dynamic> json) =>
      _$$_LoginResponceDTOFromJson(json);

  @override
  final UserDTO user;
  @override
  final String accessToken;
  @override
  final String refreshToken;

  @override
  String toString() {
    return 'LoginResponceDTO(user: $user, accessToken: $accessToken, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginResponceDTO &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, user, accessToken, refreshToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginResponceDTOCopyWith<_$_LoginResponceDTO> get copyWith =>
      __$$_LoginResponceDTOCopyWithImpl<_$_LoginResponceDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginResponceDTOToJson(
      this,
    );
  }
}

abstract class _LoginResponceDTO implements LoginResponceDTO {
  factory _LoginResponceDTO(
      {required final UserDTO user,
      required final String accessToken,
      required final String refreshToken}) = _$_LoginResponceDTO;

  factory _LoginResponceDTO.fromJson(Map<String, dynamic> json) =
      _$_LoginResponceDTO.fromJson;

  @override
  UserDTO get user;
  @override
  String get accessToken;
  @override
  String get refreshToken;
  @override
  @JsonKey(ignore: true)
  _$$_LoginResponceDTOCopyWith<_$_LoginResponceDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
