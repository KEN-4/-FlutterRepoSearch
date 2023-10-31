import 'package:dio/dio.dart';
import 'package:flutter_repo_search/riverpod/data/models/github_repository.dart';
import 'package:flutter_repo_search/riverpod/data/repository/i_github_data_source.dart';

class GitHubDataSource implements IGitHubDataSource {
  GitHubDataSource(this._dio);

  final Dio _dio;

  @override
  Future<List<GitHubRepository>> searchRepositories(String query) async {
    // GitHubの検索APIにリクエストを送り、結果をパースする
    final response = await _dio.get(
      'https://api.github.com/search/repositories',
      queryParameters: {'q': query},
    );
    // GitHubRepositoryのリストを返す
    return (response.data['items'] as List)
        .map((e) => GitHubRepository.fromJson(e))
        .toList();
  }
}