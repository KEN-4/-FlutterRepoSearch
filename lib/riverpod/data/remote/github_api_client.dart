import 'package:dio/dio.dart';
import 'package:flutter_repo_search/riverpod/data/remote/app_dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';
import 'package:flutter_repo_search/riverpod/data/models/search_result.dart';

part 'github_api_client.g.dart';

final githubApiClientProvider = Provider<GitHubApiClient>((ref) {
  return GitHubApiClient(
    ref.read(dioProvider),
  );
});

@RestApi(baseUrl: "https://api.github.com")
abstract class GitHubApiClient {
  factory GitHubApiClient(Dio dio, {String baseUrl}) = _GitHubApiClient;

  @GET("/search/repositories")
  Future<HttpResponse<SearchResult>> searchRepositories(
    @Query("q") String query,
    @Query("sort") String? sort,
    @Query("order") String? order,
    @Query("per_page") int? perPage,
    @Query("page") int? page,
  );
}
