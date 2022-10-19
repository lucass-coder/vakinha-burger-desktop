// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vakinha_burger_desktop/app/core/ui/widgets/vakinha_appbar.dart';
import 'package:vakinha_burger_desktop/app/modules/about/widgets/section_2.dart';
import 'package:vakinha_burger_desktop/app/modules/about/widgets/section_3.dart';
import 'package:vakinha_burger_desktop/app/modules/about/widgets/text_shadow.dart';

import './about_controller.dart';

class AboutPage extends GetView<AboutController> {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: VakinhaAppbar(optionRight: 'Cardápio'),
      body: Column(
        children: [
          // const _Menu(),
          Expanded(
            child: PageView(
              pageSnapping: false,
              scrollDirection: Axis.vertical,
              children: const [
                _Section(
                  color: Colors.red,
                ),
                Section2(),
                Section3(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _Menu extends StatelessWidget {
  const _Menu();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
        TextButton(onPressed: () {}, child: const Text('Section 1')),
        TextButton(onPressed: () {}, child: const Text('Section 2')),
        TextButton(onPressed: () {}, child: const Text('Section 3')),
      ]),
    );
  }
}

class _Section extends StatelessWidget {
  final Color color;
  const _Section({
    Key? key,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          // color: color,
          width: MediaQuery.of(context).size.width,
          height: 1000,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                'assets/images/about.jpg',
                // 'https://img.freepik.com/fotos-gratis/sanduiche-grande-hamburguer-hamburguer-com-carne-cebola-roxa-tomate-e-bacon-frito_2829-5352.jpg?w=826&t=st=1666010786~exp=1666011386~hmac=28a8b0e4c92ba74aa52bf43cbbcd1b3b66f7123fb41d090fdbf31eae7fd7786c'
                // 'https://github.com/lucass-coder/vakinha-burguer/blob/master/assets/images/lanche.png?raw=true')
              ),
            ),
          ),
          // child: Row(children: const []),
        ),
        TextShadow(
          color: Colors.green[700]!,
          shadow: Colors.white,
          frase: ' Sobre Nós',
          size: 40,
        )
      ],
    );
  }
}
