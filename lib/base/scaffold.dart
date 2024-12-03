import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:me/base/menu/menu.dart';
import 'package:me/theme/repository/web_theme_state_repository.dart';
import 'package:me/theme/state/theme.dart';

part 'scaffold.g.dart';

@cwidget
Widget baseScaffold(
  WidgetRef ref, {
  required Widget body,
}) {
  final currentTheme = ref.watch(themeProvider);
  final themes = ref.watch(themesProvider);

  WidgetsBinding.instance.addPostFrameCallback((_) async {
    final themeName =
        await ref.read(themeStateRepositoryProvider).fetchCurrentThemeName();

    ref.read(themesProvider).when(
          data: (themes) {
            ref.read(themeProvider.notifier).state =
                themes.firstWhere((e) => e.name == themeName);
          },
          error: (error, stackTrace) =>
              print('themesProvider error : $error, $stackTrace'),
          loading: () {},
        );
  });

  return Scaffold(
    body: themes.when(
      data: (_) => ColoredBox(
        color: currentTheme.background,
        child: Row(
          children: [
            const Menu(),
            Expanded(child: body),
          ],
        ),
      ),
      error: (_, __) => const Center(
        child: Text(
          'Something went horribly wrong',
        ),
      ),
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
    ),
  );
}
