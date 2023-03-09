import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:givt_app_kids_game/givt/impact_goal/quiz/pages/discover_world_page.dart';
import 'package:givt_app_kids_game/givt/impact_goal/quiz/pages/enter_username_page_2.dart';
import 'package:givt_app_kids_game/givt/impact_goal/quiz/widgets/givy_bubble.dart';

class IntroFinal extends StatelessWidget {
  const IntroFinal({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(
      builder: (_) => const IntroFinal(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Stack(
        children: [
          SvgPicture.asset(
            'assets/images/solar_bg.svg',
            fit: BoxFit.fill,
          ),
          SafeArea(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                horizontal: mediaQuery.size.width * 0.25,
              ),
              child: Column(
                children: const [
                  Spacer(),
                  GivyBubble(
                    texts: ['Are you up for the challenge?'],
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),
          Positioned(
            top: 430,
            left: 400,
            child: ElevatedButton(
              onPressed: () => Navigator.of(context).push(
                EnterUsernameGalaxyScreen.route(),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFFFB059),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 23),
                alignment: Alignment.center,
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 120),
                  child: Text(
                    'Let’s go',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
