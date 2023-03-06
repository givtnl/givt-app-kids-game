import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:givt_app_kids_game/givt/impact_goal/quiz/pages/discover_page.dart';

class IntroNameFinal extends StatelessWidget {
  const IntroNameFinal({
    required this.name,
    super.key,
  });

  final String name;

  static Route<void> route({
    required String name,
  }) {
    return MaterialPageRoute<void>(
      builder: (_) => IntroNameFinal(
        name: name,
      ),
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
            top: 170,
            left: 130,
            child: Image.asset(
              'assets/images/givy_name_final.png',
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            top: 195,
            left: 305,
            child: Column(
              children: [
                Text(
                  'Hey $name! Nice to meet you. To decide which world ',
                  style: const TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0A3C5F),
                  ),
                ),
                const Text(
                  'we should help first, can you answer some questions?',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0A3C5F),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 370,
            left: 350,
            child: ElevatedButton(
              onPressed: () => Navigator.of(context).push(
                DiscoverPage.route(),
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
                  padding: EdgeInsets.symmetric(horizontal: 200),
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
