import 'package:flutter/material.dart';
import 'package:flutter_repo_search/riverpod/data/viewmodels/repository_view_model.dart';
import 'package:flutter_repo_search/riverpod/data/views/github_repository_detail_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// GitHubリポジトリ検索ページ
class GitHubSearchPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchQuery = ref.watch(searchQueryProvider);
    final asyncSearchResult = ref.watch(githubSearchViewModelProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('GitHub Search'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Enter a repository name',
                border: OutlineInputBorder(),
              ),
              // ユーザーが検索を実行したときの処理を定義
              onSubmitted: (query) {
                // 検索クエリを更新するロジック
                ref.read(searchQueryProvider.notifier).state = query;
                ref.refresh(githubSearchViewModelProvider);
              },
            ),
          ),
          // 検索結果を表示するためのリストビューを展開して表示
          Expanded(
            child: asyncSearchResult.when(
              loading: () => const CircularProgressIndicator(),
              error: (err, stack) => Center(child: Text('Error: $err')),
              data: (repositories) {
                if (repositories.isEmpty) {
                  // 検索結果が空の場合のメッセージ
                  return Center(child: Text('No repositories found.'));
                } else {
                  // データ取得時に表示するウィジェット
                  return ListView.builder(
                    itemCount: repositories.length,
                    itemBuilder: (context, index) {
                      final repository = repositories[index];
                      return ListTile(
                        title: Text(repository.name ?? 'No name provided'),
                        subtitle: Text(repository.description ?? 'No description provided'),
                        onTap: () {
                          // タップしたリポジトリの詳細ページへナビゲート
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => GitHubRepositoryDetailPage(repository: repository),
                            ),
                          );
                        },
                      );
                    },
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
