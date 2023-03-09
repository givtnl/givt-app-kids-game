import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:givt_app_kids_game/givt/impact_goal/direct_choice/world_landing.dart';

import 'package:givt_app_kids_game/givt/impact_goal/direct_choice/impact_goals.dart';
import 'package:givt_app_kids_game/givt/impact_goal/quiz/intro_first.dart';

class NameChoice extends StatefulWidget {
  const NameChoice({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(
      builder: (_) => const NameChoice(),
    );
  }

  @override
  State<NameChoice> createState() => _NameChoiceState();
}

class _NameChoiceState extends State<NameChoice> {
  int random(int min, int max) {
    int nr = min + Random().nextInt(max - min);
    print(nr);
    return nr;
  }

  List<String> names = [
    'Givt Galaxy',
    'Givt Quest',
    'Givt Heroes',
    'Givt Land',
    'Givt Explorers'
  ];
  List<Color> nameColor = [
    Color(0xFFABD4DA),
    Color(0xFFFAE79C),
    Color(0xFFF8B498),
    Color(0xFFAFDBB4),
    Color.fromARGB(255, 151, 180, 253),
  ];

  @override
  Widget build(BuildContext context) {
    names.shuffle();
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Color(0xFFFFF9F3),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.zero,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                "What game would you play?",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF0A3C5F),
                ),
              ),
              Container(
                width: mediaQuery.size.width,
                height: mediaQuery.size.height * 0.7,
                //color: Colors.amber,
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: names
                      .map(
                        (name) => Padding(
                          padding: EdgeInsets.fromLTRB(
                              5,
                              random(0, (mediaQuery.size.height * 0.5).toInt())
                                  .toDouble(),
                              5,
                              0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 10.0,
                              padding: EdgeInsets.all(0),
                              backgroundColor: Color.fromARGB(0, 255, 249, 243),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(105.0),
                              ),
                            ),
                            onPressed: () {
                              HapticFeedback.heavyImpact();

                              Navigator.of(context).push(IntroFirst.route());
                            },
                            child: Container(
                              alignment: Alignment.center,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              width: mediaQuery.size.width / 5 - 50,
                              height: mediaQuery.size.width / 5 - 50,
                              decoration: BoxDecoration(
                                border: null,
                                shape: BoxShape.circle,
                                color: nameColor[names.indexOf(name)],
                              ),
                              child: Text(
                                name,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF0A3C5F),
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
