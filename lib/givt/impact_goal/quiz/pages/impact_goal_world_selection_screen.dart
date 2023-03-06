// ignore_for_file: prefer_single_quotes, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:givt_app_kids_game/givt/impact_goal/quiz/pages/impact_goal_worlds.dart';

class ImpactGoalWorldSelectionScreen extends StatelessWidget {
  const ImpactGoalWorldSelectionScreen({super.key});

  static Route<ImpactGoalWorlds> route() {
    return MaterialPageRoute<ImpactGoalWorlds>(
      builder: (_) => const ImpactGoalWorldSelectionScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF5EC),
      body: Column(
        children: [
          Spacer(
            flex: 2,
          ),
          Text(
            "Which world would you like to discover?",
            style: TextStyle(
              fontSize: 30,
              color: const Color(0xFF405A66),
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: ImpactGoalWorlds.values.map((world) {
              return GestureDetector(
                onTap: () {
                  Navigator.of(context).pop(world);
                },
                child: SizedBox(
                  width: 280,
                  height: 280,
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(35),
                        child: SvgPicture.asset(
                          world.image,
                          width: 230,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        world.name,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 30,
                          color: const Color(0xFF405A66),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
          Spacer(
            flex: 2,
          ),
        ],
      ),
    );
  }
}
