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
  final textColor = theme[AppColor.text] ?? Colors.transparent;
  final backgroundColor = theme[AppColor.accent] ?? Colors.transparent;

  return Theme(
    data: ThemeData(
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: textColor,
        selectionColor: textColor,
      ),
    ),
    child: DropdownMenu<T>(
      menuStyle: MenuStyle(
        backgroundColor: WidgetStatePropertyAll(backgroundColor),
        surfaceTintColor: const WidgetStatePropertyAll(Colors.transparent),
        shadowColor: const WidgetStatePropertyAll(Colors.transparent),
        elevation: const WidgetStatePropertyAll(0),
        padding: const WidgetStatePropertyAll(EdgeInsets.zero),
        shape: const WidgetStatePropertyAll(ContinuousRectangleBorder()),
        visualDensity: VisualDensity.standard,
      ),
      inputDecorationTheme: InputDecorationTheme(
        suffixIconColor: textColor,
        filled: true,
        fillColor: backgroundColor,
        errorBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
        focusedErrorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        border: InputBorder.none,
      ),
      textStyle: TextStyle(color: textColor),
      initialSelection: initialSelection,
      onSelected: (t) => t == null ? null : onSelected(t),
      dropdownMenuEntries: values
          .map(
            (e) => DropdownMenuEntry(
              value: e,
              label: valueToString(e),
              style: MenuItemButton.styleFrom(
                foregroundColor: theme[AppColor.text] ?? Colors.transparent,
                shape: const ContinuousRectangleBorder(),
              ),
            ),
          )
          .toList(),
    ),
  );
}
