import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:givt_app_kids_game/givt/impact_goal/quiz/widgets/chat_bubble.dart';

class GivyBubble extends StatefulWidget {
  const GivyBubble({
    required this.texts,
    super.key,
  });

  final List<String> texts;

  @override
  State<GivyBubble> createState() => _GivyBubbleState();
}

class _GivyBubbleState extends State<GivyBubble> {
  String currentText = '';
  int currentIndex = 0;
  int textsIndex = 0;

  void onNextText() {
    if (currentIndex == textsIndex - 1) {
      return;
    }
    currentIndex++;
    setState(() {
      currentText = widget.texts[currentIndex];
    });
  }

  @override
  void initState() {
    super.initState();
    currentText = widget.texts.first;
    textsIndex = widget.texts.length;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'assets/images/givy.png',
          fit: BoxFit.fill,
          height: 100,
          width: 100,
        ),
        Column(
          children: [
            ChatBubble(
              text: AnimatedTextKit(
                isRepeatingAnimation: false,
                onTap: onNextText,
                animatedTexts: [
                  getAnimatedText(currentText),
                ],
              ),
            ),
            const SizedBox(
              height: 100,
            )
          ],
        )
        // Positioned(
        //   top: 250,
        //   left: 130,
        //   child: Image.asset(
        //     'assets/images/givy_bubble.png',
        //     fit: BoxFit.fill,
        //   ),
        // ),
        // Positioned(
        //   top: 280,
        //   left: 320,
        //   child: ConstrainedBox(
        //     constraints: const BoxConstraints(),
        //     child: AnimatedTextKit(
        //       repeatForever: true,
        //       animatedTexts: texts
        //           .map(
        //             (text) => TypewriterAnimatedText(
        //               text,
        //               speed: const Duration(milliseconds: 50),
        //               textStyle: const TextStyle(
        //                 fontSize: 20,
        //                 fontWeight: FontWeight.bold,
        //                 color: Color(0xFF0A3C5F),
        //               ),
        //             ),
        //           )
        //           .toList(),
        //     ),
        //   ),
        // ),
      ],
    );
  }

  TypewriterAnimatedText getAnimatedText(String text) {
    return TypewriterAnimatedText(
      text,
      speed: const Duration(milliseconds: 50),
      textStyle: const TextStyle(
        fontSize: 26,
        fontWeight: FontWeight.bold,
        color: Color(0xFF0A3C5F),
      ),
    );
  }
}
