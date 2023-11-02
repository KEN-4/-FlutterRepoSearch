import 'package:flutter/material.dart';
import 'package:flutter_repo_search/riverpod/data/views/github_search_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    ProviderScope(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'GitHub Repository Search',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: GitHubSearchPage(), // 検索ページをホームとして設定
      ),
    ),
  );
}
