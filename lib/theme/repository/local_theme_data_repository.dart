import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:me/theme/model/app_color.dart';
import 'package:me/theme/repository/theme_data_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'local_theme_data_repository.g.dart';

@riverpod
ThemeDataRepository themeDataRepository(Ref _) => LocalThemeDataRepository();

class LocalThemeDataRepository implements ThemeDataRepository {
  final _themes = {
    'black': {
      AppColor.background: Colors.black,
      AppColor.background2: const Color.fromARGB(255, 36, 36, 36),
      AppColor.accent: const Color.fromARGB(255, 0, 63, 114),
      AppColor.text: Colors.white,
    },
    'dark': {
      AppColor.background: const Color.fromARGB(255, 56, 56, 56),
      AppColor.background2: const Color.fromARGB(255, 116, 115, 115),
      AppColor.accent: const Color.fromARGB(255, 0, 103, 187),
      AppColor.text: Colors.white,
    },
    'white': {
      AppColor.background: const Color.fromARGB(255, 255, 255, 255),
      AppColor.background2: const Color.fromARGB(255, 199, 199, 199),
      AppColor.accent: Colors.blue,
      AppColor.text: Colors.black,
    },
    'light': {
      AppColor.background: const Color.fromARGB(255, 240, 255, 187),
      AppColor.background2: const Color.fromARGB(255, 189, 189, 153),
      AppColor.accent: const Color.fromARGB(255, 243, 187, 33),
      AppColor.text: Colors.black,
    },
  };

  @override
  Future<Map<AppColor, Color>> fetchTheme(String name) async =>
      _themes[name] ?? {};

  @override
  Future<List<String>> fetchThemeNames() async => _themes.keys.toList();
}
