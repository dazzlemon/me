import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:me/theme/model/app_color.dart';
import 'package:me/theme/state/theme.dart';

part 'menu.g.dart';

@cwidget
Widget menu(
  BuildContext context,
  WidgetRef ref,
) {
  final theme = ref.watch(themeNotifierProvider);

  return ColoredBox(
    color: theme.values[AppColor.background2]!,
    child: Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: AutoRouter.of(context)
            .routeCollection
            .routes
            .map<Widget>(
              (e) => ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: theme.values[AppColor.accent],
                ),
                onPressed: () => AutoRouter.of(context).pushNamed(e.path),
                child: Text(e.name),
              ),
            )
            .intersperse(const SizedBox(height: 8))
            .toList(),
      ),
    ),
  );
}

extension IterableIntersperse<T> on Iterable<T> {
  Iterable<T> intersperse(T t) =>
      // ignore: no_magic_number
      isEmpty ? [] : expand((e) => [e, t]).take(length * 2 - 1);
}
