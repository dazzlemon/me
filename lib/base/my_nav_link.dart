import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:me/base/base_button.dart';

part 'my_nav_link.g.dart';

@cwidget
Widget myNavLink(
  BuildContext context,
  WidgetRef ref, {
  required String text,
  String? path,
}) {
  final router = AutoRouter.of(context).root;

  return BaseButton(
    text: text,
    onPressed: path == null || path == router.currentPath
        ? null
        : () => router.pushNamed(path),
  );
}
