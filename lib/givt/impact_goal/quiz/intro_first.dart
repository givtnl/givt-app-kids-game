import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:givt_app_kids_game/givt/impact_goal/quiz/intro_final.dart';
import 'package:givt_app_kids_game/givt/impact_goal/quiz/intro_second.dart';
import 'package:givt_app_kids_game/givt/impact_goal/quiz/widgets/givy_bubble.dart';

class IntroFirst extends StatelessWidget {
  const IntroFirst({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(
      builder: (_) => const IntroFirst(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SvgPicture.asset(
            'assets/images/solar_bg.svg',
            fit: BoxFit.fill,
          ),
          GestureDetector(
            onTap: () => Navigator.of(context).push(IntroFinal.route()),
            child: const GivyBubble(
              texts: [
                '''Hi, I’m Givy, I need your help! I’ve been flying around our solar 
system and all the worlds seem to be falling apart...''',
                'I need help fixing them before it’s too late...'
              ],
            ),
          ),
        ],
      ),
    );
  }
}
