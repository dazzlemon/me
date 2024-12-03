import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:me/base/base_dropdown_menu.dart';
import 'package:me/base/scaffold.dart';
import 'package:me/theme/repository/web_theme_state_repository.dart';
import 'package:me/theme/state/theme.dart';

part 'body.g.dart';

@cwidget
Widget body(WidgetRef ref) {
  final currentTheme = ref.watch(themeProvider);
  final themes = ref.watch(themesProvider);

  return BaseScaffold(
    body: themes.when(
      data: (themes) => Center(
        child: BaseDropdownMenu(
          initialSelection: currentTheme.name,
          onSelected: (name) {
            ref.read(themeProvider.notifier).state =
                themes.firstWhere((e) => e.name == name);

            // TODO: probably move it to [themeProvider]
            ref.read(themeStateRepositoryProvider).setTheme(name);
          },
          values: themes.map((e) => e.name).toList(),
          valueToString: (name) => name,
        ),
      ),
      error: (e, s) {
        print('Sorry, e = $e, s = $s');
        return Text('Sorry');
      },
      loading: () => Text('Wait'),
    ),
  );
}
