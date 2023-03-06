import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:givt_app_kids_game/givt/impact_goal/direct_choice/world_landing.dart';

import 'package:givt_app_kids_game/givt/impact_goal/direct_choice/impact_goals.dart';

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
  void trial() {
    print(ImpactGoals.ecoVerse.title);
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Color(0xFFFFF9F3),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.zero,
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
              Spacer(flex: 1),
              Row(
                children: [
                  Spacer(flex: 2),
                  Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push<void>(
                              WorldLandingPage.route(ImpactGoals.ecoVerse));
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
                          'assets/images/${ImpactGoals.ecoVerse.underscored_title}_square.svg',
                        ),
                      ),
                      SizedBox(height: mediaQuery.size.height * 0.025),
                      Text(
                        ImpactGoals.ecoVerse.title,
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF0A3C5F),
                        ),
                      )
                    ],
                  ),
                  Spacer(flex: 1),
                  Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push<void>(
                              WorldLandingPage.route(ImpactGoals.critterland));
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
                          'assets/images/${ImpactGoals.critterland.underscored_title}_square.svg',
                        ),
                      ),
                      SizedBox(height: mediaQuery.size.height * 0.025),
                      Text(
                        ImpactGoals.critterland.title,
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF0A3C5F),
                        ),
                      )
                    ],
                  ),
                  Spacer(flex: 1),
                  Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push<void>(
                              WorldLandingPage.route(ImpactGoals.helpingHaven));
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
                          'assets/images/${ImpactGoals.helpingHaven.underscored_title}_square.svg',
                        ),
                      ),
                      SizedBox(height: mediaQuery.size.height * 0.025),
                      Text(
                        ImpactGoals.helpingHaven.title,
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF0A3C5F),
                        ),
                      )
                    ],
                  ),
                  Spacer(flex: 2),
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
