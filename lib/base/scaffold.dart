import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:me/base/menu.dart';
import 'package:me/theme/model/app_color.dart';
import 'package:me/theme/state/theme.dart';

part 'scaffold.g.dart';

@cwidget
Widget baseScaffold(
  WidgetRef ref, {
  required Widget body,
}) {
  final currentTheme = ref.watch(themeNotifierProvider);

  return Scaffold(
    body: ColoredBox(
      color: currentTheme.when(
            loading: () => null,
            data: (data) => data.values[AppColor.background],
            error: (_, __) => null,
          ) ??
          Colors.white,
      child: Row(
        children: [
          const Menu(),
          Expanded(child: body),
        ],
      ),
    ),
  );
}
