import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter_repo_search/riverpod/data/models/github_repository.dart';
import 'package:flutter_repo_search/riverpod/data/repository/i_github_data_source.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


// スタブデータソースのプロバイダーを作成
final stubGitHubDataSourceProvider = Provider<StubGitHubDataSource>((ref) {
  return StubGitHubDataSource();
});

// スタブデータソースクラスを実装
class StubGitHubDataSource implements IGitHubDataSource {
  // ダミーデータを含むJSONファイルのパス
  static const _dummyDataPath = 'assets/stub/dummy_github_data.json';

  // IGitHubDataSourceのメソッドをオーバーライド
  @override
  Future<List<GitHubRepository>> searchRepositories(String query) async {
    // ダミーデータをロード
    final jsonString = await rootBundle.loadString(_dummyDataPath);
    final List<dynamic> jsonResponse = json.decode(jsonString) as List<dynamic>;
    // ダミーデータをGitHubRepositoryのリストに変換
    return jsonResponse
        .map((e) => GitHubRepository.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
