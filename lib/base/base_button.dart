import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:me/theme/model/app_color.dart';
import 'package:me/theme/state/theme.dart';

part 'base_button.g.dart';

@cwidget
Widget baseButton(
  WidgetRef ref, {
  required String text,
  required VoidCallback? onPressed,
}) {
  final theme = ref.watch(themeNotifierProvider).values;

  return FilledButton(
    style: FilledButton.styleFrom(
      elevation: 0,
      backgroundColor: theme[AppColor.accent],
      shadowColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
    onPressed: onPressed,
    child: Text(
      text,
      style: TextStyle(
        color: theme[AppColor.text],
      ),
    ),
  );
}
