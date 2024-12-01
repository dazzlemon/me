import 'package:auto_route/auto_route.dart';
import 'package:me/app/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/',
          page: HomeRoute.page,
        ),
        AutoRoute(
          page: VidyaRoute.page,
          children: [
            AutoRoute(
              page: GoodGamesRoute.page,
            ),
            AutoRoute(
              page: BacklogRoute.page,
            ),
          ],
        ),
        AutoRoute(
          page: SettingsRoute.page,
        ),
      ];
}
