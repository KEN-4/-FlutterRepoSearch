import 'package:freezed_annotation/freezed_annotation.dart';

part 'github_repository.freezed.dart';
part 'github_repository.g.dart';

@freezed
class GitHubRepository with _$GitHubRepository {
  factory GitHubRepository({
    String? name,
    String? fullName,
    String? htmlUrl,
    int? stargazersCount,
    String? description,
    // その他のGitHubリポジトリ情報があればここに追加
  }) = _GitHubRepository;

  factory GitHubRepository.fromJson(Map<String, dynamic> json) =>
      _$GitHubRepositoryFromJson(json);
}
