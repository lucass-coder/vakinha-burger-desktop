import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:vakinha_burger_desktop/app/core/ui/widgets/icon_badge.dart';
import 'package:vakinha_burger_desktop/app/core/ui/widgets/vakinha_appbar.dart';
import './home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: VakinhaAppbar(),
        body: Navigator(
          initialRoute: '/menu',
          key: Get.nestedKey(HomeController.NAVIGATOR_KEY),
          onGenerateRoute: controller.onGeneratedRouter,
        ),
        bottomNavigationBar: Obx(() {
          return BottomNavigationBar(
            onTap: (value) => controller.tabIndex = value,
            currentIndex: controller.tabIndex,
            // ignore: prefer_const_literals_to_create_immutables
            items: [
              const BottomNavigationBarItem(
                  icon: Icon(Icons.list), label: 'Produtos'),
              BottomNavigationBarItem(
                icon: IconBadge(
                  icon: Icons.shopping_cart,
                  number: controller.totalProductsInShoppingCards,
                ),
                label: 'Carrinho',
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.exit_to_app),
                label: 'Sair',
              ),
            ],
          );
        }));
  }
}
