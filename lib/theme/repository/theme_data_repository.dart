import 'dart:ui';

import 'package:me/theme/model/app_color.dart';

abstract class ThemeDataRepository {
  Future<Map<AppColor, Color>> fetchTheme(String name);
  Future<List<String>> fetchThemeNames();
}
