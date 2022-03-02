import 'package:get/get.dart';
import 'package:wechat/common/middlewares/router_auth.dart';
import 'package:wechat/common/routes/app_route.dart';
import 'package:wechat/pages/home/bindings.dart';
import 'package:wechat/pages/home/view.dart';
import 'package:wechat/pages/sign_in/bindings.dart';
import 'package:wechat/pages/sign_in/view.dart';

abstract class AppPage {
  AppPage._();

  static final List<GetPage> pages = [
    GetPage(
      name: AppRoute.signIn,
      page: () => const SignInPage(),
      binding: SignInBindings(),
    ),
    GetPage(
      name: AppRoute.home,
      page: () => const HomePage(),
      binding: HomeBindings(),
      middlewares: [
        RouteAuthMiddleware(),
      ],
    ),
  ];
}
