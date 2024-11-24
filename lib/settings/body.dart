import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
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
      child: DropdownMenu<String>(
        initialSelection: currentTheme.name,
        onSelected: (theme) => theme == null ? null : notifier.setTheme(theme),
        dropdownMenuEntries: themeNames.when(
          data: (names) => names
              .map(
                (e) => DropdownMenuEntry(
                  value: e,
                  label: e,
                ),
              )
              .toList(),
          error: (_, __) => [],
          loading: () => [],
        ),
      ),
    ),
  );
}
