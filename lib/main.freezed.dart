// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RepositoryProf _$RepositoryProfFromJson(Map<String, dynamic> json) {
  return _RepositoryProf.fromJson(json);
}

/// @nodoc
mixin _$RepositoryProf {
  List<dynamic> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RepositoryProfCopyWith<RepositoryProf> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepositoryProfCopyWith<$Res> {
  factory $RepositoryProfCopyWith(
          RepositoryProf value, $Res Function(RepositoryProf) then) =
      _$RepositoryProfCopyWithImpl<$Res, RepositoryProf>;
  @useResult
  $Res call({List<dynamic> items});
}

/// @nodoc
class _$RepositoryProfCopyWithImpl<$Res, $Val extends RepositoryProf>
    implements $RepositoryProfCopyWith<$Res> {
  _$RepositoryProfCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RepositoryProfCopyWith<$Res>
    implements $RepositoryProfCopyWith<$Res> {
  factory _$$_RepositoryProfCopyWith(
          _$_RepositoryProf value, $Res Function(_$_RepositoryProf) then) =
      __$$_RepositoryProfCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<dynamic> items});
}

/// @nodoc
class __$$_RepositoryProfCopyWithImpl<$Res>
    extends _$RepositoryProfCopyWithImpl<$Res, _$_RepositoryProf>
    implements _$$_RepositoryProfCopyWith<$Res> {
  __$$_RepositoryProfCopyWithImpl(
      _$_RepositoryProf _value, $Res Function(_$_RepositoryProf) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$_RepositoryProf(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RepositoryProf implements _RepositoryProf {
  const _$_RepositoryProf({required final List<dynamic> items})
      : _items = items;

  factory _$_RepositoryProf.fromJson(Map<String, dynamic> json) =>
      _$$_RepositoryProfFromJson(json);

  final List<dynamic> _items;
  @override
  List<dynamic> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'RepositoryProf(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RepositoryProf &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RepositoryProfCopyWith<_$_RepositoryProf> get copyWith =>
      __$$_RepositoryProfCopyWithImpl<_$_RepositoryProf>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RepositoryProfToJson(
      this,
    );
  }
}

abstract class _RepositoryProf implements RepositoryProf {
  const factory _RepositoryProf({required final List<dynamic> items}) =
      _$_RepositoryProf;

  factory _RepositoryProf.fromJson(Map<String, dynamic> json) =
      _$_RepositoryProf.fromJson;

  @override
  List<dynamic> get items;
  @override
  @JsonKey(ignore: true)
  _$$_RepositoryProfCopyWith<_$_RepositoryProf> get copyWith =>
      throw _privateConstructorUsedError;
}
