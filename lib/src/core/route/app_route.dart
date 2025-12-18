import 'package:auto_route/auto_route.dart';
import 'package:flutter_fintech_task/src/presentation/features/authentication/login/view/login_page.dart';

import '../../presentation/features/user/view/user_page.dart';

part 'app_route.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: LoginRoute.page, initial: true),
    AutoRoute(page: UserRoute.page,path: '/user'),
  ];
}