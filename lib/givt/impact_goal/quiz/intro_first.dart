import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:givt_app_kids_game/givt/impact_goal/quiz/intro_second.dart';

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
          Positioned(
            top: 280,
            left: 120,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(IntroSecond.route());
              },
              child: Image.asset(
                'assets/images/givy_solar.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
