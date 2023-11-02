import 'package:flutter_repo_search/riverpod/data/models/github_repository.dart';
import 'package:flutter_repo_search/riverpod/data/models/result.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_repo_search/riverpod/data/models/providers.dart';


final errorMessageProvider = StateProvider<String>((_) => '');
final searchQueryProvider = StateProvider<String>((_) => '');

final githubSearchViewModelProvider = FutureProvider.autoDispose<List<GitHubRepository>>(
  (ref) async {
    final query = ref.watch(searchQueryProvider);
    final Result<List<GitHubRepository>> searchResult = await ref.watch(gitHubSearchRepositoryProvider).searchGitHubRepositories(query);

    return searchResult.when(
      success: (repositories) => repositories,
      failure: (error) {
        // エラー時に toString を呼び出して文字列表現を取得
        ref.read(errorMessageProvider.notifier).state = error.toString();
        // エラーに基づいて空のリストを返す
        return [];
      },
    );
  },
);
