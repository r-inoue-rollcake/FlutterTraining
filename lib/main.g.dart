// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RepositoryProf _$$_RepositoryProfFromJson(Map<String, dynamic> json) =>
    _$_RepositoryProf(
      items: json['items'] as List<dynamic>,
    );

Map<String, dynamic> _$$_RepositoryProfToJson(_$_RepositoryProf instance) =>
    <String, dynamic>{
      'items': instance.items,
    };

_$_Items _$$_ItemsFromJson(Map<String, dynamic> json) => _$_Items(
      name: json['name'] as String,
      description: json['description'] as String?,
      url: json['url'] as String,
      stargazers_count: json['stargazers_count'] as int,
    );

Map<String, dynamic> _$$_ItemsToJson(_$_Items instance) => <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'url': instance.url,
      'stargazers_count': instance.stargazers_count,
    };
