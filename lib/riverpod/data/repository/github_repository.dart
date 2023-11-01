import 'package:dio/dio.dart';
import 'package:flutter_repo_search/riverpod/data/models/github_repository.dart';
import 'package:flutter_repo_search/riverpod/data/models/result.dart';
import 'package:flutter_repo_search/riverpod/data/repository/i_github_data_source.dart';

class GitHubSearchRepository {
  GitHubSearchRepository(this._dataSource);

  final IGitHubDataSource _dataSource;

  Future<Result<List<GitHubRepository>>> searchGitHubRepositories(String query) async {
    try {
      final repositories = await _dataSource.searchRepositories(query);
      return Result.success(repositories);
    } on DioError catch (dioError) {
      // Pass the DioError object directly
      return Result.failure(dioError);
    } catch (e) {
      // Check if the error is an Exception
      if (e is Exception) {
        return Result.failure(e);
      } else {
        // If it's not an Exception, wrap it in a generic one
        return Result.failure(Exception('An error occurred: $e'));
      }
    }
  }
}



