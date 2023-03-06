import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:givt_app_kids_game/givt/impact_goal/quiz/pages/discover_world_page.dart';

class IntroFinal extends StatelessWidget {
  const IntroFinal({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(
      builder: (_) => const IntroFinal(),
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
            child: Image.asset(
              'assets/images/givy_solar_final.png',
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            top: 450,
            left: 480,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(DiscoverWorldPage.route());
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF56BFE0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 23),
                alignment: Alignment.center,
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Yes! Let’s go',
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
