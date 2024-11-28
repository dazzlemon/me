import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:me/base/my_nav_link.dart';
import 'package:me/base/utils.dart';
import 'package:me/theme/model/app_color.dart';
import 'package:me/theme/state/theme.dart';

part 'menu.g.dart';

@cwidget
Widget menu(
  BuildContext context,
  WidgetRef ref,
) {
  final theme = ref.watch(themeNotifierProvider).values;
  final router = AutoRouter.of(context).root;

  return ColoredBox(
    color: theme[AppColor.background2] ?? Colors.transparent,
    child: Padding(
      padding: const EdgeInsets.all(8),
      child: IntrinsicWidth(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: router.routeCollection.routes
              .expand<Widget>(
                (route) {
                  final children = route.children?.routes ?? [];

                  return [
                    if (children.isEmpty)
                      MyNavLink(
                        text: route.name,
                        path: route.path,
                      )
                    else
                      Center(
                        child: Text(
                          route.name,
                          style: TextStyle(
                            color: theme[AppColor.accent],
                          ),
                        ),
                      ),
                    ...children.map(
                      (subroute) => Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: MyNavLink(
                          text: subroute.name,
                          path: '${route.path}/${subroute.path}',
                        ),
                      ),
                    ),
                  ];
                },
              )
              .intersperse(const SizedBox(height: 8))
              .toList(),
        ),
      ),
    ),
  );
}
