import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_theme_switcher/riverpod_model.dart';

final riverpodIsLight = StateProvider<bool>((ref) {
  return true;
});

final riverpodIsLightHard = ChangeNotifierProvider<RiverpodModel>((ref) {
  return RiverpodModel(isLight: true);
});
