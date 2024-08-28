import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpodlearningfluttermap/riverpod_data.dart';

class HardPage extends ConsumerWidget {
  const HardPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Riverpod Theme Switcher"),
      ),
      body: Center(
        child: Switch(
          thumbIcon:
              WidgetStateProperty.resolveWith<Icon>((Set<WidgetState> states) {
            if (ref.watch(riverpodIsLightHard).isLight) {
              return const Icon(Icons.light_mode);
            }
            return const Icon(Icons.dark_mode);
          }),
          value: ref.watch(riverpodIsLightHard).isLight,
          onChanged: (value) {
            ref.read(riverpodIsLightHard.notifier).changeTheme();
          },
        ),
      ),
    );
  }
}
