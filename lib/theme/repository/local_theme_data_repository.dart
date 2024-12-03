import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:me/theme/model/app_theme.dart';
import 'package:me/theme/repository/theme_data_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'local_theme_data_repository.g.dart';

@riverpod
ThemeDataRepository themeDataRepository(Ref _) => LocalThemeDataRepository();

class LocalThemeDataRepository implements ThemeDataRepository {
  @override
  Future<List<AppTheme>> fetchThemes() async {
    final response = await Dio().get('http://127.0.0.1:8080/themes');

    return ((response.data as Map<String, dynamic>)['data'] as List)
        .cast<Map<String, dynamic>>()
        .map(AppTheme.fromJson)
        .toList();
  }
}
