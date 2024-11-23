import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:me/base/menu.dart';

part 'scaffold.g.dart';

@swidget
Widget baseScaffold({
  required Widget body,
}) =>
    Scaffold(
      body: Row(
        children: [
          const Menu(),
          body,
        ],
      ),
    );
