import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class GivyBubble extends StatelessWidget {
  const GivyBubble({
    required this.texts,
    super.key,
  });

  final List<String> texts;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 250,
          left: 130,
          child: Image.asset(
            'assets/images/givy_bubble.png',
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          top: 280,
          left: 320,
          child: ConstrainedBox(
            constraints: const BoxConstraints(),
            child: AnimatedTextKit(
              repeatForever: true,
              animatedTexts: texts
                  .map(
                    (text) => TypewriterAnimatedText(
                      text,
                      speed: const Duration(milliseconds: 50),
                      textStyle: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF0A3C5F),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }
}
