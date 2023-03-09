import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:givt_app_kids_game/givt/impact_goal/quiz/widgets/chat_bubble.dart';
import 'package:givt_app_kids_game/utils/audia_player_helper.dart';

class GivyBubble extends StatefulWidget {
  const GivyBubble({
    required this.texts,
    this.onNavigateToNextPage,
    super.key,
  });

  final List<String> texts;
  final VoidCallback? onNavigateToNextPage;

  @override
  State<GivyBubble> createState() => _GivyBubbleState();
}

class _GivyBubbleState extends State<GivyBubble> {
  String currentText = '';
  int currentIndex = 0;
  int textsIndex = 0;

  void onNextText() {
    AudioPlayerHelper.playLightClick();

    if (currentIndex == textsIndex - 1) {
      if (widget.onNavigateToNextPage != null)
        widget.onNavigateToNextPage?.call();
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
              onTap: widget.texts.length > 1 ? onNextText : null,
              text: AnimatedTextKit(
                key: UniqueKey(),
                isRepeatingAnimation: false,
                displayFullTextOnTap: true,
                animatedTexts: [
                  TypewriterAnimatedText(
                    currentText,
                    speed: const Duration(milliseconds: 50),
                    textStyle: const TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF0A3C5F),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 100,
            )
          ],
        )
      ],
    );
  }
}
