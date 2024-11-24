import 'dart:ui';

import 'package:me/theme/model/app_color.dart';

abstract class ColorsRepository {
  Future<Map<AppColor, Color>> fetchTheme(String name);
  Future<List<String>> fetchThemeNames();
  Future<String> fetchCurrentThemeName();
  Future<void> setTheme(String name);
}
