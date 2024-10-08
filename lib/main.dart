import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_theme_switcher/hard_page.dart';
import 'package:riverpod_theme_switcher/riverpod_data.dart';

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
