import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:me/base/color_theme.dart';

part 'menu.g.dart';

@swidget
Widget menu(BuildContext context) => ColoredBox(
      color: ColorTheme.drawer,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: AutoRouter.of(context)
              .routeCollection
              .routes
              .map<Widget>(
                (e) => ElevatedButton(
                  onPressed: () => AutoRouter.of(context).pushNamed(e.path),
                  child: Text(e.name),
                ),
              )
              .intersperse(const SizedBox(height: 8))
              .toList(),
        ),
      ),
    );

extension IterableIntersperse<T> on Iterable<T> {
  Iterable<T> intersperse(T t) =>
      // ignore: no_magic_number
      isEmpty ? [] : expand((e) => [e, t]).take(length * 2 - 1);
}
