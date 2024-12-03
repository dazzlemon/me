import 'package:me/theme/model/app_theme.dart';

abstract class ThemeDataRepository {
  Future<List<AppTheme>> fetchThemes();
}
