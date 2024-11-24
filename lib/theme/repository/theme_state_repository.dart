abstract class ThemeStateRepository {
  Future<String> fetchCurrentThemeName();
  Future<void> setTheme(String name);
}
