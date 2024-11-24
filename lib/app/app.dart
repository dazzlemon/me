import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:me/app/router.dart';

part 'app.g.dart';

final _router = AppRouter();

@swidget
Widget myApp() => ProviderScope(
      child: MaterialApp.router(
        routerConfig: _router.config(),
      ),
    );
