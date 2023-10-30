import 'package:freezed_annotation/freezed_annotation.dart';
import 'github_repository.dart'; 

part 'search_result.freezed.dart';
part 'search_result.g.dart';

@freezed
class SearchResult with _$SearchResult {
  factory SearchResult({
    int? totalCount,
    bool? incompleteResults,
    List<GitHubRepository>? items,
  }) = _SearchResult;

  factory SearchResult.fromJson(Map<String, dynamic> json) =>
      _$SearchResultFromJson(json);
}
