import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:givt_app_kids_game/givt/impact_goal/direct_choice/impact_goals.dart';

class WorldLandingPage extends StatefulWidget {
  ImpactGoals goal;
  WorldLandingPage({this.goal = ImpactGoals.critterland, super.key});

  static Route<void> route(ImpactGoals passed) {
    return MaterialPageRoute<void>(
      builder: (_) => WorldLandingPage(
        goal: passed,
      ),
    );
  }

  @override
  State<WorldLandingPage> createState() => _WorldLandingPageState();
}

class _WorldLandingPageState extends State<WorldLandingPage> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: widget.goal.background_color,
      body: Stack(
        children: [
          SvgPicture.asset(
            'assets/images/${widget.goal.underscored_title}_full_backdrop.svg',
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 175,
                padding: EdgeInsets.only(top: 30),
                child: Stack(
                  children: [
                    SvgPicture.asset(
                      'assets/images/givy_floater.svg',
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(160, 0, 0, 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hi, I’m Givy, welcome to ${widget.goal.title}",
                            style: const TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF0A3C5F),
                            ),
                          ),
                          const Text(
                            "I’ll be your guide in this world to make this a great place for all people.",
                            style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.normal,
                              color: Color(0xFF0A3C5F),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
