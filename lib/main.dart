import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:vakinha_burger_desktop/app/core/bindings/application_binding.dart';
import 'package:vakinha_burger_desktop/app/core/ui/vakinha_ui.dart';
import 'package:vakinha_burger_desktop/app/routes/about_routers.dart';
import 'package:vakinha_burger_desktop/app/routes/auth_routers.dart';
import 'package:vakinha_burger_desktop/app/routes/home_routers.dart';
import 'package:vakinha_burger_desktop/app/routes/menu_routers.dart';
import 'package:vakinha_burger_desktop/app/routes/orders_routers.dart';
import 'package:vakinha_burger_desktop/app/routes/product_routers.dart';
import 'package:vakinha_burger_desktop/app/routes/splash_routers.dart';

Future<void> main() async {
  await GetStorage.init();
  runApp(const VakinhaBurguerMainApp());
}

class VakinhaBurguerMainApp extends StatelessWidget {
  const VakinhaBurguerMainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: ApplicationBinding(),
      theme: VakinhaUi.theme,
      title: 'Vakinha Burguer',
      getPages: [
        ...SplashRouters.routers,
        ...AuthRouters.routers,
        ...HomeRouters.routers,
        ...ProductRouters.routers,
        ...OrdersRouters.routers,
        ...MenuRouters.routers,
        ...AboutRouters.routers,
      ],
    );
  }
}
