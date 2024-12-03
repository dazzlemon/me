import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:me/app/router.gr.dart';
import 'package:me/base/menu/menu_base.dart';
import 'package:me/base/menu/menu_item_base.dart';

part 'menu.g.dart';

@cwidget
Widget menu(
  BuildContext context,
  WidgetRef ref,
) =>
    const MenuBase(
      children: [
        MenuItemRoute(text: 'Home', route: HomeRoute()),
        MenuItemSubmenu(
          text: 'Games',
          children: [
            ('Good games', GoodGamesRoute()),
            ('Backlog', BacklogRoute()),
          ],
        ),
        MenuItemRoute(text: 'Blog', route: BlogRoute()),
        MenuItemRoute(text: 'Settings', route: SettingsRoute()),
      ],
    );
