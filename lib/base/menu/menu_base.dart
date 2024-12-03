import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:me/base/utils.dart';
import 'package:me/theme/state/theme.dart';

part 'menu_base.g.dart';

@cwidget
Widget menuBase(
  BuildContext context,
  WidgetRef ref, {
  required List<Widget> children,
  MainAxisSize mainAxisSize = MainAxisSize.max,
}) {
  final theme = ref.watch(themeProvider);

  return ColoredBox(
    color: theme.background2,
    child: IntrinsicWidth(
      child: Column(
        mainAxisSize: mainAxisSize,
        children: children
            .intersperse(
              Divider(
                height: 0,
                indent: 8,
                endIndent: 8,
                color: theme.text,
              ),
            )
            .toList(),
      ),
    ),
  );
}
