import 'package:dio/dio.dart';
import 'package:flutter_repo_search/riverpod/data/repository/github_data_source.dart';
import 'package:flutter_repo_search/riverpod/data/repository/github_repository.dart';
import 'package:flutter_repo_search/riverpod/data/repository/i_github_data_source.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final gitHubSearchRepositoryProvider = Provider<GitHubSearchRepository>((ref) {
  final dataSource = ref.watch(gitHubDataSourceProvider);
  return GitHubSearchRepository(dataSource);
});


final gitHubDataSourceProvider = Provider<IGitHubDataSource>((ref) {
  final dio = ref.watch(dioProvider);
  return GitHubDataSource(dio);
});

final dioProvider = Provider<Dio>((ref) {
  return Dio(); // Dioのインスタンスを構成する
});
