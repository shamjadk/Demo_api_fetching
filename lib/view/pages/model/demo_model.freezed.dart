// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'demo_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DemoModel _$DemoModelFromJson(Map<String, dynamic> json) {
  return _DemoModel.fromJson(json);
}

/// @nodoc
mixin _$DemoModel {
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "avatar")
  String get avatar => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DemoModelCopyWith<DemoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DemoModelCopyWith<$Res> {
  factory $DemoModelCopyWith(DemoModel value, $Res Function(DemoModel) then) =
      _$DemoModelCopyWithImpl<$Res, DemoModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "name") String name,
      @JsonKey(name: "avatar") String avatar,
      @JsonKey(name: "id") String id});
}

/// @nodoc
class _$DemoModelCopyWithImpl<$Res, $Val extends DemoModel>
    implements $DemoModelCopyWith<$Res> {
  _$DemoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? avatar = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DemoModelImplCopyWith<$Res>
    implements $DemoModelCopyWith<$Res> {
  factory _$$DemoModelImplCopyWith(
          _$DemoModelImpl value, $Res Function(_$DemoModelImpl) then) =
      __$$DemoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "name") String name,
      @JsonKey(name: "avatar") String avatar,
      @JsonKey(name: "id") String id});
}

/// @nodoc
class __$$DemoModelImplCopyWithImpl<$Res>
    extends _$DemoModelCopyWithImpl<$Res, _$DemoModelImpl>
    implements _$$DemoModelImplCopyWith<$Res> {
  __$$DemoModelImplCopyWithImpl(
      _$DemoModelImpl _value, $Res Function(_$DemoModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? avatar = null,
    Object? id = null,
  }) {
    return _then(_$DemoModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DemoModelImpl implements _DemoModel {
  const _$DemoModelImpl(
      {@JsonKey(name: "name") required this.name,
      @JsonKey(name: "avatar") required this.avatar,
      @JsonKey(name: "id") required this.id});

  factory _$DemoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DemoModelImplFromJson(json);

  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "avatar")
  final String avatar;
  @override
  @JsonKey(name: "id")
  final String id;

  @override
  String toString() {
    return 'DemoModel(name: $name, avatar: $avatar, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DemoModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, avatar, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DemoModelImplCopyWith<_$DemoModelImpl> get copyWith =>
      __$$DemoModelImplCopyWithImpl<_$DemoModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DemoModelImplToJson(
      this,
    );
  }
}

abstract class _DemoModel implements DemoModel {
  const factory _DemoModel(
      {@JsonKey(name: "name") required final String name,
      @JsonKey(name: "avatar") required final String avatar,
      @JsonKey(name: "id") required final String id}) = _$DemoModelImpl;

  factory _DemoModel.fromJson(Map<String, dynamic> json) =
      _$DemoModelImpl.fromJson;

  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "avatar")
  String get avatar;
  @override
  @JsonKey(name: "id")
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$DemoModelImplCopyWith<_$DemoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
