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
        ),
        AutoRoute(
          page: SettingsRoute.page,
        ),
      ];
}
