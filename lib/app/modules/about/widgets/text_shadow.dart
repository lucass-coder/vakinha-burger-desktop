// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class TextShadow extends StatelessWidget {
  final Color color;
  final Color shadow;
  final String frase;
  final int size;

  const TextShadow({
    Key? key,
    required this.color,
    required this.shadow,
    required this.frase,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.center,
          heightFactor: 5,
          child: AutoSizeText(
            frase,
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.width * .04,
              foreground: Paint()
                ..style = PaintingStyle.stroke
                ..strokeWidth = 6
                ..color = color,
            ),
          ),
        ),
        // Solid text as fill.
        Align(
          alignment: Alignment.center,
          heightFactor: 5,
          child: AutoSizeText(
            frase,
            textScaleFactor: 1.0,
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.width * .04,
              color: shadow,
            ),
          ),
        ),
      ],
    );
  }
}
