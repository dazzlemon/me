import 'dart:ui';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:me/base/model/app_color.dart';
import 'package:me/base/repository/local_colors_repository.dart';
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

@riverpod
class ThemeNotifier extends _$ThemeNotifier {
  @override
  Future<ThemeState> build() async => ThemeState(
        name: 'black',
        values: await LocalColorsRepository().fetchTheme('black'),
      );

  Future<void> setTheme(String name) async {
    state = AsyncValue.data(
      ThemeState(
        name: name,
        values: await LocalColorsRepository().fetchTheme(name),
      ),
    );
  }
}
