import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpodlearningfluttermap/hard_page.dart';
import 'package:riverpodlearningfluttermap/riverpod_data.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MainApp(),
    ),
  );
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      home: const HardPage(),
      theme: ThemeData(
        brightness: ref.watch(riverpodIsLightHard).isLight
            ? Brightness.light
            : Brightness.dark,
      ),
    );
  }
}
