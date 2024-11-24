import 'dart:html';

import 'package:flutter/material.dart';
import 'package:me/theme/model/app_color.dart';
import 'package:me/theme/repository/colors_repository.dart';

class LocalColorsRepository implements ColorsRepository {
  final _themes = {
    'black': {
      AppColor.background: Colors.black,
      AppColor.background2: const Color.fromARGB(255, 36, 36, 36),
      AppColor.accent: const Color.fromARGB(255, 0, 63, 114),
    },
    'dark': {
      AppColor.background: const Color.fromARGB(255, 56, 56, 56),
      AppColor.background2: const Color.fromARGB(255, 116, 115, 115),
      AppColor.accent: const Color.fromARGB(255, 0, 103, 187),
    },
    'white': {
      AppColor.background: const Color.fromARGB(255, 255, 255, 255),
      AppColor.background2: const Color.fromARGB(255, 199, 199, 199),
      AppColor.accent: Colors.blue,
    },
    'light': {
      AppColor.background: const Color.fromARGB(255, 240, 255, 187),
      AppColor.background2: const Color.fromARGB(255, 189, 189, 153),
      AppColor.accent: const Color.fromARGB(255, 243, 187, 33),
    },
  };

  @override
  Future<Map<AppColor, Color>> fetchTheme(String name) async =>
      _themes[name] ?? {};

  @override
  Future<List<String>> fetchThemeNames() async => _themes.keys.toList();

  final _localStorage = window.localStorage;

  @override
  Future<String> fetchCurrentThemeName() async =>
      _localStorage['theme'] ?? 'black';

  @override
  Future<void> setTheme(String name) async => _localStorage['theme'] = name;
}
