// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'github_repository.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GitHubRepository _$GitHubRepositoryFromJson(Map<String, dynamic> json) {
  return _GitHubRepository.fromJson(json);
}

/// @nodoc
mixin _$GitHubRepository {
  String? get name => throw _privateConstructorUsedError;
  String? get fullName => throw _privateConstructorUsedError;
  String? get htmlUrl => throw _privateConstructorUsedError;
  int? get stargazersCount => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GitHubRepositoryCopyWith<GitHubRepository> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GitHubRepositoryCopyWith<$Res> {
  factory $GitHubRepositoryCopyWith(
          GitHubRepository value, $Res Function(GitHubRepository) then) =
      _$GitHubRepositoryCopyWithImpl<$Res, GitHubRepository>;
  @useResult
  $Res call(
      {String? name,
      String? fullName,
      String? htmlUrl,
      int? stargazersCount,
      String? description});
}

/// @nodoc
class _$GitHubRepositoryCopyWithImpl<$Res, $Val extends GitHubRepository>
    implements $GitHubRepositoryCopyWith<$Res> {
  _$GitHubRepositoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? fullName = freezed,
    Object? htmlUrl = freezed,
    Object? stargazersCount = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      htmlUrl: freezed == htmlUrl
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      stargazersCount: freezed == stargazersCount
          ? _value.stargazersCount
          : stargazersCount // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GitHubRepositoryImplCopyWith<$Res>
    implements $GitHubRepositoryCopyWith<$Res> {
  factory _$$GitHubRepositoryImplCopyWith(_$GitHubRepositoryImpl value,
          $Res Function(_$GitHubRepositoryImpl) then) =
      __$$GitHubRepositoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? fullName,
      String? htmlUrl,
      int? stargazersCount,
      String? description});
}

/// @nodoc
class __$$GitHubRepositoryImplCopyWithImpl<$Res>
    extends _$GitHubRepositoryCopyWithImpl<$Res, _$GitHubRepositoryImpl>
    implements _$$GitHubRepositoryImplCopyWith<$Res> {
  __$$GitHubRepositoryImplCopyWithImpl(_$GitHubRepositoryImpl _value,
      $Res Function(_$GitHubRepositoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? fullName = freezed,
    Object? htmlUrl = freezed,
    Object? stargazersCount = freezed,
    Object? description = freezed,
  }) {
    return _then(_$GitHubRepositoryImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      htmlUrl: freezed == htmlUrl
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      stargazersCount: freezed == stargazersCount
          ? _value.stargazersCount
          : stargazersCount // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GitHubRepositoryImpl implements _GitHubRepository {
  _$GitHubRepositoryImpl(
      {this.name,
      this.fullName,
      this.htmlUrl,
      this.stargazersCount,
      this.description});

  factory _$GitHubRepositoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$GitHubRepositoryImplFromJson(json);

  @override
  final String? name;
  @override
  final String? fullName;
  @override
  final String? htmlUrl;
  @override
  final int? stargazersCount;
  @override
  final String? description;

  @override
  String toString() {
    return 'GitHubRepository(name: $name, fullName: $fullName, htmlUrl: $htmlUrl, stargazersCount: $stargazersCount, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GitHubRepositoryImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl) &&
            (identical(other.stargazersCount, stargazersCount) ||
                other.stargazersCount == stargazersCount) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, fullName, htmlUrl, stargazersCount, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GitHubRepositoryImplCopyWith<_$GitHubRepositoryImpl> get copyWith =>
      __$$GitHubRepositoryImplCopyWithImpl<_$GitHubRepositoryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GitHubRepositoryImplToJson(
      this,
    );
  }
}

abstract class _GitHubRepository implements GitHubRepository {
  factory _GitHubRepository(
      {final String? name,
      final String? fullName,
      final String? htmlUrl,
      final int? stargazersCount,
      final String? description}) = _$GitHubRepositoryImpl;

  factory _GitHubRepository.fromJson(Map<String, dynamic> json) =
      _$GitHubRepositoryImpl.fromJson;

  @override
  String? get name;
  @override
  String? get fullName;
  @override
  String? get htmlUrl;
  @override
  int? get stargazersCount;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$GitHubRepositoryImplCopyWith<_$GitHubRepositoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
