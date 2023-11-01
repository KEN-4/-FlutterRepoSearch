import 'package:flutter/material.dart';
import 'package:flutter_repo_search/riverpod/data/models/github_repository.dart';
import 'package:flutter_repo_search/riverpod/data/viewmodels/repository_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
              onSubmitted: (query) {
                // 検索クエリを更新するロジックをここに追加します。
                ref.read(searchQueryProvider.notifier).state = query;
              },
            ),
          ),
          Expanded(
            child: asyncSearchResult.when(
              loading: () => const CircularProgressIndicator(),
              error: (err, stack) => Text('Error: $err'),
              data: (repositories) {
                // データ取得時に表示するWidgetを返却
                return ListView.builder(
                  itemCount: repositories.length,
                  itemBuilder: (context, index) {
                    final repository = repositories[index];
                    return ListTile(
                      title: Text(repository.name ?? 'No name provided'),
                      subtitle: Text(repository.description ?? 'No description provided'),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
