import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:vakinha_burger_desktop/app/core/ui/widgets/vakinha_appbar.dart';
import './menu_controller.dart';

class MenuPage extends GetView<MenuController> {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var largura = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: VakinhaAppbar(optionRight: 'Sobre nós'),
      body: Obx(() {
        return Container(
          color: const Color.fromARGB(172, 1, 117, 32),
          child: GridView.count(
            crossAxisCount: largura < 800 ? 2 : 3,
            children: List.generate(controller.menu.length, (index) {
              return Card(
                child: Center(
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            controller.menu[index].name,
                            overflow: TextOverflow.visible,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        // Icon(Icons.add, size: 80.0, color: Colors.black),
                        // Image.asset('assets/images/repository/x-salada.jpg'),
                        // Image.network(
                        //   controller.menu[index].image,
                        //   height: MediaQuery.of(context).size.width * .25,
                        //   fit: BoxFit.contain,
                        // ),
                        Container(
                          height: MediaQuery.of(context).size.width * .19,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.contain,
                              image: NetworkImage(
                                controller.menu[index].image,
                                // 'https://github.com/lucass-coder/vakinha-burguer/blob/master/assets/images/lanche.png?raw=true')
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            ' Pão, carne, queijo, presunto, alface, tomate, cheddar ou requeijão. Acompanha batata frita',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ]),
                ),
              );
            }),
          ),
        );
      }),
    );
  }
}
