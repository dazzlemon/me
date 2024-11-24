import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:me/theme/model/app_color.dart';
import 'package:me/theme/repository/local_colors_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme.g.dart';

@riverpod
Future<List<String>> themeNames(Ref ref) =>
    LocalColorsRepository().fetchThemeNames();

class ThemeState {
  final String name;
  final Map<AppColor, Color> values;

  ThemeState({
    required this.name,
    required this.values,
  });
}

final _fallbackTheme = ThemeState(
  name: 'black',
  values: {
    AppColor.background: Colors.black,
    AppColor.background2: const Color.fromARGB(255, 36, 36, 36),
    AppColor.accent: const Color.fromARGB(255, 0, 63, 114),
  },
);

@riverpod
class ThemeNotifier extends _$ThemeNotifier {
  @override
  ThemeState build() => _fallbackTheme;

  Future<void> setTheme(String name) async {
    state = ThemeState(
      name: name,
      values: await LocalColorsRepository().fetchTheme(name),
    );
  }
}
