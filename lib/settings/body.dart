import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:me/base/base_dropdown_menu.dart';
import 'package:me/base/scaffold.dart';
import 'package:me/theme/state/theme.dart';

part 'body.g.dart';

@cwidget
Widget body(WidgetRef ref) {
  final themeNames = ref.watch(themeNamesProvider);
  final notifier = ref.watch(themeNotifierProvider.notifier);
  final currentTheme = ref.watch(themeNotifierProvider);

  return BaseScaffold(
    body: Center(
      child: themeNames.when(
        data: (names) => BaseDropdownMenu(
          initialSelection: currentTheme.name,
          onSelected: notifier.setTheme,
          values: names,
          valueToString: (name) => name,
        ),
        error: (_, __) => const Text('Error while loading themes'),
        loading: () => const CircularProgressIndicator(),
      ),
    ),
  );
}
