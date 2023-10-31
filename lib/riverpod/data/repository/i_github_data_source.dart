import 'package:flutter_repo_search/riverpod/data/models/github_repository.dart';

abstract class IGitHubDataSource {
  Future<List<GitHubRepository>> searchRepositories(String query);
}