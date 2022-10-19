import 'package:get/get.dart';
import 'package:vakinha_burger_desktop/app/modules/about/about_page.dart';
import 'package:vakinha_burger_desktop/app/modules/splash/splash_bindings.dart';

class AboutRouters {
  AboutRouters._();

  static final routers = <GetPage>[
    GetPage(
      name: '/about',
      binding: SplashBindings(),
      page: () => const AboutPage(),
    ),
  ];
}
