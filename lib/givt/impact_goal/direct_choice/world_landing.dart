import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:givt_app_kids_game/givt/impact_goal/spinner/spinning_wheel_screen.dart';

class WorldLandingPage extends StatefulWidget {
  String worldKey;
  WorldLandingPage({this.worldKey = 'critterland', super.key});

  static Route<void> route(String passed) {
    return MaterialPageRoute<void>(
      builder: (_) => WorldLandingPage(
        worldKey: passed,
      ),
    );
  }

  @override
  State<WorldLandingPage> createState() => _WorldLandingPageState();
}

class _WorldLandingPageState extends State<WorldLandingPage> {
  Map world = {
    'critterland': {
      'title': 'Critterland',
      'lowercase': 'critterland',
      'backgroundColor': Color(0xFFEFF8FD)
    },
    'ecoverse': {
      'title': 'EcoVerse',
      'lowercase': 'ecoverse',
      'backgroundColor': Color(0xFFD6EDD8)
    },
    'haven': {
      'title': 'Helping Haven',
      'lowercase': 'helping_haven',
      'backgroundColor': Color(0xFFFFEFE9)
    }
  };
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: world[widget.worldKey]['backgroundColor'] as Color,
      body: Stack(
        children: [
          SvgPicture.asset(
            'assets/images/${world[widget.worldKey]['lowercase']}_full_backdrop.svg',
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
                            "Hi, I’m Givy, welcome to ${world[widget.worldKey]['title']}",
                            style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF0A3C5F),
                            ),
                          ),
                          Text(
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
