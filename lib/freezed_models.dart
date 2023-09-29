import 'package:freezed_annotation/freezed_annotation.dart';
part "freezed_models.freezed.dart";
part "freezed_models.g.dart";

@freezed
class RepositoryProf with _$RepositoryProf {
  const factory RepositoryProf({
    required List items,
  }) = _RepositoryProf;

  factory RepositoryProf.fromJson(Map<String, Object?> json) =>
      _$RepositoryProfFromJson(json);
}

@freezed
class Items with _$Items {
  const factory Items({
    required String name,
    String? description,
    required String url,
    @JsonKey(name: "stargazers_count") required int stargazersCount,
  }) = _Items;

  factory Items.fromJson(Map<String, Object?> json) => _$ItemsFromJson(json);
}
