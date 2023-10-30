import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    ProviderScope(
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text('GitHub Search'),
          ),
          body: const SearchBar(),
        ),
      ),
    ),
  );
}
