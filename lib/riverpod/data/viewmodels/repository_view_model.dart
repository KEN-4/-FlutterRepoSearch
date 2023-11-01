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
        // Call toString on the error to get a string representation
        ref.read(errorMessageProvider.notifier).state = error.toString();
        // Return an empty list or something else based on the error
        return [];
      },
    );
  },
);
