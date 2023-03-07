import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';

class GivyBubbleStatic extends StatelessWidget {
  const GivyBubbleStatic({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 65, right: 30),
          child: Image.asset(
            'assets/images/givy.png',
            fit: BoxFit.fill,
            scale: 1.8,
          ),
        ),
        SizedBox(
          width: mediaQuery.size.width * 0.73,
          child: Stack(
            children: [
              SvgPicture.asset(
                'assets/images/bubble.svg',
              ),
              Container(
                padding: const EdgeInsets.all(40),
                child: Text(
                  text,
                  style: const TextStyle(
                    fontSize: 25,
                    color: Color(0xFF405A66),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
