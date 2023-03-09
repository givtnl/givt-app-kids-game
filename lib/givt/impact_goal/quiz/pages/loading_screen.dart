// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_single_quotes

import 'package:flutter/material.dart';

import 'package:loading_indicator/loading_indicator.dart';
import 'package:lottie/lottie.dart';

import 'package:givt_app_kids_game/givt/impact_goal/quiz/pages/impact_goal_world_screen.dart';
import 'package:givt_app_kids_game/givt/impact_goal/quiz/pages/impact_goal_worlds.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key, required this.world});

  final ImpactGoalWorlds world;

  static Route<void> route(ImpactGoalWorlds world) {
    return MaterialPageRoute<void>(
      builder: (_) => LoadingScreen(
        world: world,
      ),
    );
  }

  static const List<Color> loadingColors = [
//    Color(0xFF0F0696),
    Color(0xFF50B08A),
    Color(0xFF76BFE2),
    Color(0xFFF5C158),
  ];

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(
      Duration(seconds: 3),
    ).then(
      (_) {
        Navigator.of(context).push(ImpactGoalWorldScreen.route(widget.world));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: const Color(0xFFFFF9F3),
      body: Center(
        child: Column(
          children: [
            Spacer(),
            SizedBox(
              width: mediaQuery.size.width * 0.4,
              height: mediaQuery.size.width * 0.45,
              child: LoadingIndicator(
                indicatorType: Indicator.ballPulseSync,
                colors: LoadingScreen.loadingColors,
              ),
              // Lottie.asset(
              //   "assets/images/lotties/loading_givt_pallette.json",
              // ),
            ),
            Text(
              "Creating your personalized world",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 40,
                color: Color(0xFF0A3C5F),
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
