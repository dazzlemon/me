import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

part 'menu.g.dart';

@swidget
Widget menu(BuildContext context) => Column(
      children: AutoRouter.of(context)
          .routeCollection
          .routes
          .map(
            (e) => ElevatedButton(
              onPressed: () => AutoRouter.of(context).pushNamed(e.path),
              child: Text(e.name),
            ),
          )
          .toList(),
    );
