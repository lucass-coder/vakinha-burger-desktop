import 'package:flutter/material.dart';

class Section3 extends StatelessWidget {
  const Section3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      color: const Color(0xFF7D9DFF),
      child: Center(child: Image.asset('assets/images/avatar.png')),
    );
  }
}
