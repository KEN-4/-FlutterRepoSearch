// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_repository.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GitHubRepositoryImpl _$$GitHubRepositoryImplFromJson(
        Map<String, dynamic> json) =>
    _$GitHubRepositoryImpl(
      name: json['name'] as String?,
      fullName: json['fullName'] as String?,
      htmlUrl: json['htmlUrl'] as String?,
      stargazersCount: json['stargazersCount'] as int?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$GitHubRepositoryImplToJson(
        _$GitHubRepositoryImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'fullName': instance.fullName,
      'htmlUrl': instance.htmlUrl,
      'stargazersCount': instance.stargazersCount,
      'description': instance.description,
    };
