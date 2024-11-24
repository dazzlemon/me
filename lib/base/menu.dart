import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:me/base/model/app_color.dart';
import 'package:me/base/state/theme.dart';

part 'menu.g.dart';

@cwidget
Widget menu(
  BuildContext context,
  WidgetRef ref,
) {
  final currentTheme = ref.watch(themeNotifierProvider);

  return ColoredBox(
    color: currentTheme.when(
          loading: () => null,
          data: (data) => data.values[AppColor.background2],
          error: (_, __) => null,
        ) ??
        Colors.white,
    child: Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: AutoRouter.of(context)
            .routeCollection
            .routes
            .map<Widget>(
              (e) => ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: currentTheme.when(
                        loading: () => null,
                        data: (data) => data.values[AppColor.accent],
                        error: (_, __) => null,
                      ) ??
                      Colors.white,
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
