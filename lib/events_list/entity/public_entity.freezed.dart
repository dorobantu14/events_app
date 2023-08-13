// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'public_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PublicEntity _$PublicEntityFromJson(Map<String, dynamic> json) {
  return _Public.fromJson(json);
}

/// @nodoc
mixin _$PublicEntity {
  String get startDateTime => throw _privateConstructorUsedError;
  String get endDateTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PublicEntityCopyWith<PublicEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PublicEntityCopyWith<$Res> {
  factory $PublicEntityCopyWith(
          PublicEntity value, $Res Function(PublicEntity) then) =
      _$PublicEntityCopyWithImpl<$Res, PublicEntity>;
  @useResult
  $Res call({String startDateTime, String endDateTime});
}

/// @nodoc
class _$PublicEntityCopyWithImpl<$Res, $Val extends PublicEntity>
    implements $PublicEntityCopyWith<$Res> {
  _$PublicEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startDateTime = null,
    Object? endDateTime = null,
  }) {
    return _then(_value.copyWith(
      startDateTime: null == startDateTime
          ? _value.startDateTime
          : startDateTime // ignore: cast_nullable_to_non_nullable
              as String,
      endDateTime: null == endDateTime
          ? _value.endDateTime
          : endDateTime // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PublicCopyWith<$Res> implements $PublicEntityCopyWith<$Res> {
  factory _$$_PublicCopyWith(_$_Public value, $Res Function(_$_Public) then) =
      __$$_PublicCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String startDateTime, String endDateTime});
}

/// @nodoc
class __$$_PublicCopyWithImpl<$Res>
    extends _$PublicEntityCopyWithImpl<$Res, _$_Public>
    implements _$$_PublicCopyWith<$Res> {
  __$$_PublicCopyWithImpl(_$_Public _value, $Res Function(_$_Public) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startDateTime = null,
    Object? endDateTime = null,
  }) {
    return _then(_$_Public(
      startDateTime: null == startDateTime
          ? _value.startDateTime
          : startDateTime // ignore: cast_nullable_to_non_nullable
              as String,
      endDateTime: null == endDateTime
          ? _value.endDateTime
          : endDateTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Public implements _Public {
  const _$_Public({required this.startDateTime, required this.endDateTime});

  factory _$_Public.fromJson(Map<String, dynamic> json) =>
      _$$_PublicFromJson(json);

  @override
  final String startDateTime;
  @override
  final String endDateTime;

  @override
  String toString() {
    return 'PublicEntity(startDateTime: $startDateTime, endDateTime: $endDateTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Public &&
            (identical(other.startDateTime, startDateTime) ||
                other.startDateTime == startDateTime) &&
            (identical(other.endDateTime, endDateTime) ||
                other.endDateTime == endDateTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, startDateTime, endDateTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PublicCopyWith<_$_Public> get copyWith =>
      __$$_PublicCopyWithImpl<_$_Public>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PublicToJson(
      this,
    );
  }
}

abstract class _Public implements PublicEntity {
  const factory _Public(
      {required final String startDateTime,
      required final String endDateTime}) = _$_Public;

  factory _Public.fromJson(Map<String, dynamic> json) = _$_Public.fromJson;

  @override
  String get startDateTime;
  @override
  String get endDateTime;
  @override
  @JsonKey(ignore: true)
  _$$_PublicCopyWith<_$_Public> get copyWith =>
      throw _privateConstructorUsedError;
}
