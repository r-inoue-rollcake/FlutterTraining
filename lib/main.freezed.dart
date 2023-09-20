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

Items _$ItemsFromJson(Map<String, dynamic> json) {
  return _Items.fromJson(json);
}

/// @nodoc
mixin _$Items {
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  int get stargazers_count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemsCopyWith<Items> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemsCopyWith<$Res> {
  factory $ItemsCopyWith(Items value, $Res Function(Items) then) =
      _$ItemsCopyWithImpl<$Res, Items>;
  @useResult
  $Res call(
      {String name, String? description, String url, int stargazers_count});
}

/// @nodoc
class _$ItemsCopyWithImpl<$Res, $Val extends Items>
    implements $ItemsCopyWith<$Res> {
  _$ItemsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = freezed,
    Object? url = null,
    Object? stargazers_count = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      stargazers_count: null == stargazers_count
          ? _value.stargazers_count
          : stargazers_count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ItemsCopyWith<$Res> implements $ItemsCopyWith<$Res> {
  factory _$$_ItemsCopyWith(_$_Items value, $Res Function(_$_Items) then) =
      __$$_ItemsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name, String? description, String url, int stargazers_count});
}

/// @nodoc
class __$$_ItemsCopyWithImpl<$Res> extends _$ItemsCopyWithImpl<$Res, _$_Items>
    implements _$$_ItemsCopyWith<$Res> {
  __$$_ItemsCopyWithImpl(_$_Items _value, $Res Function(_$_Items) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = freezed,
    Object? url = null,
    Object? stargazers_count = null,
  }) {
    return _then(_$_Items(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      stargazers_count: null == stargazers_count
          ? _value.stargazers_count
          : stargazers_count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Items implements _Items {
  const _$_Items(
      {required this.name,
      this.description,
      required this.url,
      required this.stargazers_count});

  factory _$_Items.fromJson(Map<String, dynamic> json) =>
      _$$_ItemsFromJson(json);

  @override
  final String name;
  @override
  final String? description;
  @override
  final String url;
  @override
  final int stargazers_count;

  @override
  String toString() {
    return 'Items(name: $name, description: $description, url: $url, stargazers_count: $stargazers_count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Items &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.stargazers_count, stargazers_count) ||
                other.stargazers_count == stargazers_count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, description, url, stargazers_count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ItemsCopyWith<_$_Items> get copyWith =>
      __$$_ItemsCopyWithImpl<_$_Items>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemsToJson(
      this,
    );
  }
}

abstract class _Items implements Items {
  const factory _Items(
      {required final String name,
      final String? description,
      required final String url,
      required final int stargazers_count}) = _$_Items;

  factory _Items.fromJson(Map<String, dynamic> json) = _$_Items.fromJson;

  @override
  String get name;
  @override
  String? get description;
  @override
  String get url;
  @override
  int get stargazers_count;
  @override
  @JsonKey(ignore: true)
  _$$_ItemsCopyWith<_$_Items> get copyWith =>
      throw _privateConstructorUsedError;
}
