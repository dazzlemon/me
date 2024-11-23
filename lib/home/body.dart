import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:me/base/scaffold.dart';

part 'body.g.dart';

@swidget
Widget body() => const BaseScaffold(
      body: Center(
        child: Text(
          'Hello there',
        ),
      ),
    );
