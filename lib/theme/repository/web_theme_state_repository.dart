import 'dart:html';
import 'package:me/theme/repository/theme_state_repository.dart';

class WebThemeStateRepository extends ThemeStateRepository {
  final _localStorage = window.localStorage;

  @override
  Future<String> fetchCurrentThemeName() async =>
      _localStorage['theme'] ?? 'black';

  @override
  Future<void> setTheme(String name) async => _localStorage['theme'] = name;
}
