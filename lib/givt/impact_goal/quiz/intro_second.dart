import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:givt_app_kids_game/givt/impact_goal/quiz/intro_final.dart';

class IntroSecond extends StatelessWidget {
  const IntroSecond({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(
      builder: (_) => const IntroSecond(),
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
                Navigator.of(context).push(IntroFinal.route());
              },
              child: Image.asset(
                'assets/images/givy_solar_2.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
