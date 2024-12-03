import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:me/base/scaffold.dart';
import 'package:me/theme/state/theme.dart';

part 'wip_body.g.dart';

@cwidget
Widget wipBody(WidgetRef ref) {
  final currentTheme = ref.watch(themeProvider);

  return BaseScaffold(
    body: Center(
      child: Text(
        'This page is not implemented yet',
        style: TextStyle(color: currentTheme.text),
      ),
    ),
  );
}
