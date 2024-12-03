import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:me/theme/model/app_theme.dart';
import 'package:me/theme/repository/local_theme_data_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme.g.dart';

@riverpod
Future<List<AppTheme>> themes(Ref ref) =>
    ref.watch(themeDataRepositoryProvider).fetchThemes();

const _fallbackTheme = AppTheme(
  name: 'black',
  background: Colors.black,
  background2: Color.fromARGB(255, 36, 36, 36),
  accent: Color.fromARGB(255, 0, 63, 114),
  text: Colors.white,
);

final themeProvider = StateProvider<AppTheme>(
  (ref) => _fallbackTheme,
);
