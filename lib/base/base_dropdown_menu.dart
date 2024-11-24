import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:me/theme/model/app_color.dart';
import 'package:me/theme/state/theme.dart';

part 'base_dropdown_menu.g.dart';

@cwidget
Widget baseDropdownMenu<T>(
  WidgetRef ref, {
  required T initialSelection,
  required ValueChanged<T> onSelected,
  required String Function(T) valueToString,
  required List<T> values,
}) {
  final theme = ref.watch(themeNotifierProvider).values;
  final color = theme[AppColor.text] ?? Colors.transparent;

  return DropdownMenu<T>(
    menuStyle: MenuStyle(
      backgroundColor: const WidgetStatePropertyAll(Colors.transparent),
      surfaceTintColor: const WidgetStatePropertyAll(Colors.transparent),
      shadowColor: const WidgetStatePropertyAll(Colors.transparent),
      elevation: const WidgetStatePropertyAll(0),
      padding: const WidgetStatePropertyAll(EdgeInsets.zero),
      side: WidgetStatePropertyAll(BorderSide(color: color)),
    ),
    inputDecorationTheme: InputDecorationTheme(
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: color,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: color,
        ),
      ),
    ),
    textStyle: TextStyle(
      color: theme[AppColor.text] ?? Colors.transparent,
    ),
    initialSelection: initialSelection,
    onSelected: (t) => t == null ? null : onSelected(t),
    dropdownMenuEntries: values
        .map(
          (e) => DropdownMenuEntry(
            value: e,
            label: valueToString(e),
            style: ButtonStyle(
              foregroundColor: WidgetStatePropertyAll(
                theme[AppColor.text] ?? Colors.transparent,
              ),
              backgroundColor: const WidgetStatePropertyAll(Colors.transparent),
            ),
          ),
        )
        .toList(),
  );
}
