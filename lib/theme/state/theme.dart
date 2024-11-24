import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:me/theme/model/app_color.dart';
import 'package:me/theme/repository/local_theme_data_repository.dart';
import 'package:me/theme/repository/theme_data_repository.dart';
import 'package:me/theme/repository/theme_state_repository.dart';
import 'package:me/theme/repository/web_theme_state_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme.g.dart';

@riverpod
Future<List<String>> themeNames(Ref ref) =>
    LocalThemeDataRepository().fetchThemeNames();

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
  final ThemeDataRepository _themeDataRepository = LocalThemeDataRepository();
  final ThemeStateRepository _themeStateRepository = WebThemeStateRepository();

  @override
  ThemeState build() {
    _themeStateRepository.fetchCurrentThemeName().then(setTheme);

    return _fallbackTheme;
  }

  Future<void> setTheme(String name) async {
    state = ThemeState(
      name: name,
      values: await _themeDataRepository.fetchTheme(name),
    );

    await _themeStateRepository.setTheme(name);
  }
}
