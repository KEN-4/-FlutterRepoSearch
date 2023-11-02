import 'package:flutter/material.dart';
import 'package:flutter_repo_search/riverpod/data/models/github_repository.dart';

class GitHubRepositoryDetailPage extends StatelessWidget {
  final GitHubRepository repository;

  const GitHubRepositoryDetailPage({Key? key, required this.repository})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(repository.name ?? 'Repository Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        // 詳細情報を縦に並べて表示します。
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            if (repository.fullName != null)
              Text('Full name: ${repository.fullName}',
                  style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            if (repository.stargazersCount != null)
              Text('Stars: ${repository.stargazersCount}',
                  style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            if (repository.htmlUrl != null)
              Text('URL: ${repository.htmlUrl}',
                  style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            if (repository.description != null)
              Text('Description: ${repository.description}',
                  style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
