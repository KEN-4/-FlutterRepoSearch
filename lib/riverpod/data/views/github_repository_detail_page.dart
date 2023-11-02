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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            if (repository.owner != null)
              CircleAvatar(
                backgroundImage: NetworkImage(repository.owner!['avatar_url']),
              ),
            SizedBox(height: 10),
            Text('Language: ${repository.language}', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text('Stars: ${repository.stargazersCount}', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text('Watchers: ${repository.watchersCount}', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text('Forks: ${repository.forksCount}', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text('Open Issues: ${repository.openIssuesCount}', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text('Description: ${repository.description}', style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
