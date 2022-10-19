// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, non_constant_identifier_names

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vakinha_burger_desktop/app/core/ui/widgets/vakinha_button.dart';
import 'package:vakinha_burger_desktop/app/modules/splash/splash_controller.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({Key? key}) : super(key: key);

  Widget DesktopNavbar() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              TextButton(
                onPressed: () {
                  Get.toNamed('/menu');
                },
                child: Text(
                  "Cardápio",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                width: 4,
              ),
              TextButton(
                onPressed: () {
                  Get.toNamed('/about');
                },
                child: Text(
                  "Sobre nós",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                width: 4,
              ),
              MaterialButton(
                color: Colors.pink,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                onPressed: () {
                  controller.checkLogged();
                },
                child: Text(
                  "Login",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var largura = context.widthTransformer();
    log('ALTURA É DE: $largura');
    return largura <= 800
        ? Scaffold(
            body: Container(
              color: Color(0xFF140E0E),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: SizedBox(
                      width: context.width,
                      child: Image.asset(
                        'assets/images/lanche.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        SizedBox(
                          height: context.heightTransformer(reducedBy: 85),
                        ),
                        Image.asset('assets/images/logo.png'),
                        const SizedBox(
                          height: 60,
                        ),
                        VakinhaButton(
                          label: 'Acessar',
                          width: context.widthTransformer(reducedBy: 40),
                          height: 40,
                          onPressed: () {
                            controller.checkLogged();
                            //Get.toNamed('/auth/login');
                            //Get.toNamed('/homePage');
                          },
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        : Scaffold(
            body: SingleChildScrollView(
              child: Container(
                height: context.heightTransformer(),
                width: context.widthTransformer(),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: ExactAssetImage(
                        'assets/images/fundo2.jpg',
                      )),
                  // gradient: LinearGradient(
                  //     begin: Alignment.centerLeft,
                  //     end: Alignment.centerRight,
                  //     colors: [
                  //       Color.fromARGB(255, 0, 0, 0),
                  //       Color(0xFF007D21),
                  //     ]),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 24.0,
                        left: context.widthTransformer(reducedBy: 60),
                      ),
                      child: Image.asset(
                        'assets/images/logo.png',
                        width: context.widthTransformer(reducedBy: 80),
                      ),
                    ),
                    Spacer(),
                    DesktopNavbar(),
                  ],
                ),
              ),
            ),
          );
  }
}

// class DesktopNavbar extends StatelessWidget {
//   const DesktopNavbar({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
//       child: Container(
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: <Widget>[      
//             Row(
//               children: <Widget>[
//                 Text(
//                   "Cardápio",
//                   style: TextStyle(color: Colors.white),
//                 ),
//                 SizedBox(
//                   width: 20,
//                 ),
//                 Text(
//                   "Sobre nós",
//                   style: TextStyle(color: Colors.white),
//                 ),
//                 SizedBox(
//                   width: 20,
//                 ),
//                 MaterialButton(
//                   color: Colors.pink,
//                   shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.all(Radius.circular(20.0))),
//                   onPressed: () {},
//                   child: Text(
//                     "Login",
//                     style: TextStyle(color: Colors.white),
//                   ),
//                 )
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }