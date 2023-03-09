// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:givt_app_kids_game/givt/impact_goal/quiz/pages/impact_goal_world_selection_screen.dart';

import 'package:givt_app_kids_game/givt/impact_goal/quiz/pages/impact_goal_worlds.dart';
import 'package:givt_app_kids_game/givt/impact_goal/quiz/widgets/givy_bubble_static.dart';

class ImpactGoalWorldScreen extends StatefulWidget {
  ImpactGoalWorldScreen({
    required this.impactGoalWorld,
    super.key,
  });

  static Route<void> route(ImpactGoalWorlds world) {
    return MaterialPageRoute<void>(
      builder: (_) => ImpactGoalWorldScreen(
        impactGoalWorld: world,
      ),
    );
  }

  ImpactGoalWorlds impactGoalWorld;

  @override
  State<ImpactGoalWorldScreen> createState() => _ImpactGoalWorldScreenState();
}

class _ImpactGoalWorldScreenState extends State<ImpactGoalWorldScreen> {
  late ImpactGoalWorlds _selectedWorld = widget.impactGoalWorld;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SvgPicture.asset(
            _selectedWorld.image,
            fit: BoxFit.fill,
          ),
          Positioned(
            left: 50,
            top: 50,
            child: GivyBubbleStatic(
              text:
                  "Great, based on your answers you could be of great help in ${_selectedWorld.name}. Are you ready to explore?",
            ),
          ),
          Positioned(
            child: Center(
              child: Container(
                margin: EdgeInsets.only(top: 100),
                width: 750,
                height: 82,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF0A3C5F),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    child: const Text(
                      "Let's explore!",
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
          ),
          Positioned(
            left: 10,
            bottom: 10,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push<ImpactGoalWorlds>(
                  ImpactGoalWorldSelectionScreen.route(),
                )
                    .then((value) {
                  if (value != null) {
                    setState(() {
                      _selectedWorld = value;
                    });
                  }
                });
              },
              child: SvgPicture.asset(
                'assets/images/discover_worlds.svg',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
