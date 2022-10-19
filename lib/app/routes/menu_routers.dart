import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:vakinha_burger_desktop/app/modules/menu/menu_bindings.dart';
import 'package:vakinha_burger_desktop/app/modules/menu/menu_page.dart';

class MenuRouters {
  MenuRouters._();

  static final routers = <GetPage>[
    GetPage(
      name: '/menu',
      binding: MenuBindings(),
      page: () => const MenuPage(),
    ),
  ];
}
