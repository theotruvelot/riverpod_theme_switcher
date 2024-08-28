import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_theme_switcher/riverpod_data.dart';

class EasyPage extends ConsumerWidget {
  const EasyPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Riverpod Theme Switcher"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
                onPressed: () {
                  ref.read(riverpodIsLight.notifier).state = true;
                },
                label: const Text('Light'),
                icon: const Icon(Icons.light_mode)),
            ElevatedButton.icon(
                onPressed: () {
                  ref.read(riverpodIsLight.notifier).state = false;
                },
                label: const Text('Dark'),
                icon: const Icon(Icons.dark_mode))
          ],
        ),
      ),
    );
  }
}
