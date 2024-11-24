import 'dart:ui';

import 'package:me/base/model/app_color.dart';

abstract class ColorsRepository {
  Future<Map<AppColor, Color>> fetchTheme(String name);
  Future<List<String>> fetchThemeNames();
}
