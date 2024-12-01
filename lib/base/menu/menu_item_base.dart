import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:me/base/menu/menu_base.dart';
import 'package:me/theme/model/app_color.dart';
import 'package:me/theme/state/theme.dart';

part 'menu_item_base.g.dart';

@cwidget
Widget menuItemBase(
  BuildContext context,
  WidgetRef ref, {
  required String text,
  bool highlight = false,
}) {
  final theme = ref.watch(themeNotifierProvider).values;

  return Container(
    color: highlight ? theme[AppColor.accent] : null,
    padding: const EdgeInsets.symmetric(
      vertical: 10,
      horizontal: 20,
    ),
    child: Center(
      child: Text(
        text,
        style: TextStyle(
          color: theme[AppColor.text],
        ),
      ),
    ),
  );
}

@cwidget
Widget menuItemRoute(
  BuildContext context,
  WidgetRef ref, {
  required String text,
  required PageRouteInfo route,
}) {
  final router = AutoRouter.of(context);

  final isActive = router.isRouteActive(route.routeName);

  return InkWell(
    onTap: isActive ? null : () => router.navigate(route),
    child: MenuItemBase(
      text: text,
      highlight: isActive,
    ),
  );
}

@hcwidget
Widget menuItemSubmenu(
  BuildContext context,
  WidgetRef ref, {
  required String text,
  required List<(String, PageRouteInfo)> children,
}) {
  final link = useMemoized(LayerLink.new);
  final controller = useMemoized(OverlayPortalController.new);
  final isChildHovered = useState(false);
  final isParentHovered = useState(false);

  if (!isChildHovered.value && !isParentHovered.value && controller.isShowing) {
    WidgetsBinding.instance.addPostFrameCallback((_) => controller.hide());
  }

  if ((isChildHovered.value || isParentHovered.value) &&
      !controller.isShowing) {
    WidgetsBinding.instance.addPostFrameCallback((_) => controller.show());
  }

  return CompositedTransformTarget(
    link: link,
    child: OverlayPortal(
      controller: controller,
      overlayChildBuilder: (context) => Positioned(
        // TODO: investigate better method for sizing this
        width: 150,
        child: CompositedTransformFollower(
          link: link,
          targetAnchor: Alignment.topRight,
          // ignore: avoid_redundant_argument_values
          followerAnchor: Alignment.topLeft,
          child: MouseRegion(
            onEnter: (_) => isChildHovered.value = true,
            onExit: (_) => isChildHovered.value = false,
            child: Padding(
              padding: const EdgeInsets.only(left: 8),
              child: MenuBase(
                mainAxisSize: MainAxisSize.min,
                children: children
                    .map(
                      (e) => MenuItemRoute(
                        text: e.$1,
                        route: e.$2,
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        ),
      ),
      child: MouseRegion(
        onEnter: (_) => isParentHovered.value = true,
        onExit: (_) => isParentHovered.value = false,
        child: MenuItemBase(
          text: text,
        ),
      ),
    ),
  );
}
