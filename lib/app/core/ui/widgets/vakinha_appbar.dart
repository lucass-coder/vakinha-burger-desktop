import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VakinhaAppbar extends AppBar {
  final String optionRight;
  VakinhaAppbar({
    Key? key,
    double elevation = 5,
    this.optionRight = 'Cardápio',
  }) : super(
          key: key,
          backgroundColor: const Color.fromARGB(255, 1, 92, 25),
          elevation: elevation,
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  Get.toNamed('/');
                },
                child: const Text(
                  "Home",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
              const SizedBox(
                width: 40,
              ),
              Image.asset(
                'assets/images/logo.png',
                width: 120,
              ),
              const SizedBox(
                width: 40,
              ),
              TextButton(
                onPressed: () {
                  if (optionRight == 'Cardápio') {
                    Get.toNamed('/menu');
                  } else if (optionRight == 'Sobre nós') {
                    Get.toNamed('/about');
                  }
                },
                child: Text(
                  optionRight,
                  style: const TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ],
          ),
          iconTheme: const IconThemeData(color: Colors.black),
          toolbarHeight: 100,
        );
}
