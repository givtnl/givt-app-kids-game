import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:givt_app_kids_game/givt/impact_goal/direct_choice/world_landing.dart';

import 'package:givt_app_kids_game/givt/impact_goal/spinner/spinning_wheel_screen.dart';

class DirectChoiceGoals extends StatefulWidget {
  const DirectChoiceGoals({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(
      builder: (_) => const DirectChoiceGoals(),
    );
  }

  @override
  State<DirectChoiceGoals> createState() => _DirectChoiceGoalsState();
}

class _DirectChoiceGoalsState extends State<DirectChoiceGoals> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Color(0xFFFFF9F3),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: mediaQuery.size.width * 0.05,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(flex: 4),
              const Text(
                "Which world do you want to help?",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF0A3C5F),
                ),
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context)
                              .push<void>(WorldLandingPage.route('ecoverse'));
                        },
                        style: ElevatedButton.styleFrom(
                          elevation: 10.0,
                          padding: EdgeInsets.all(0),
                          backgroundColor: Color(0xFFFFF9F3),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(105.0),
                          ),
                        ),
                        child: SvgPicture.asset(
                          'assets/images/ecoverse_square.svg',
                        ),
                      ),
                      SizedBox(height: mediaQuery.size.height * 0.025),
                      const Text(
                        "EcoVerse",
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF0A3C5F),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push<void>(
                              WorldLandingPage.route('critterland'));
                        },
                        style: ElevatedButton.styleFrom(
                          elevation: 10.0,
                          padding: EdgeInsets.all(0),
                          backgroundColor: Color(0xFFFFF9F3),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(105.0),
                          ),
                        ),
                        child: SvgPicture.asset(
                          'assets/images/critterland_square.svg',
                        ),
                      ),
                      SizedBox(height: mediaQuery.size.height * 0.025),
                      const Text(
                        "Critterland",
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF0A3C5F),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context)
                              .push<void>(WorldLandingPage.route('haven'));
                        },
                        style: ElevatedButton.styleFrom(
                          elevation: 10.0,
                          padding: EdgeInsets.all(0),
                          backgroundColor: Color(0xFFFFF9F3),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(105.0),
                          ),
                        ),
                        child: SvgPicture.asset(
                          'assets/images/helping_haven_square.svg',
                        ),
                      ),
                      SizedBox(height: mediaQuery.size.height * 0.025),
                      const Text(
                        "Helping Haven",
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF0A3C5F),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Spacer(flex: 5),
            ],
          ),
        ),
      ),
    );
  }
}
