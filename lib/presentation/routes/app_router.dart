import 'package:auto_route/auto_route.dart';

import '../feature/home/home_page.dart';
import '../feature/splash/splash_page.dart';
import '../feature/unknown_page/unknown_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes =>
      [AutoRoute(page: HomeRoute.page, initial: true)];
}
