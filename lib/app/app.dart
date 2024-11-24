import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:me/app/router.dart';

part 'app.g.dart';

final _router = AppRouter();

@swidget
Widget myApp() => MaterialApp.router(
      routerConfig: _router.config(),
    );
