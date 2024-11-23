import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:me/my_home_page.dart';

part 'my_app.g.dart';

@swidget
Widget myApp() => const MaterialApp(home: MyHomePage());
