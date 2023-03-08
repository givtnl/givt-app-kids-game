import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import 'package:givt_app_kids_game/givt/impact_goal/quiz/pages/impact_goal_world_screen.dart';
import 'package:givt_app_kids_game/givt/impact_goal/quiz/pages/impact_goal_worlds.dart';
import 'package:givt_app_kids_game/givt/impact_goal/quiz/pages/impact_goals.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(
      builder: (_) => const DiscoverPage(),
    );
  }

  @override
  State<DiscoverPage> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  int stage = 1;
  String selectedGoal = '';
  Map<String, int> choices = {
    'animal': 0,
    'nature': 0,
    'health': 0,
    'people': 0,
  };

  final goals = [
    'animal',
    'nature',
    'health',
    'people',
  ];

  void nextStage() {
    if (stage == 4) {
      int maxValue = 0;
      String outcome = '';

      choices.forEach((key, value) {
        if (value > maxValue) {
          maxValue = value;
          outcome = key;
        }
      });

      ImpactGoalWorlds world;

      switch (outcome) {
        case 'animal':
          world = ImpactGoalWorlds.critterCountry;
          break;
        case 'nature':
          world = ImpactGoalWorlds.wildWoods;
          break;
        case 'health':
          world = ImpactGoalWorlds.rescueRealm;
          break;
        case 'people':
          world = ImpactGoalWorlds.kindnessKingdom;
          break;
        default:
          world = ImpactGoalWorlds.wildWoods;
      }

      Navigator.of(context).push(ImpactGoalWorldScreen.route(world));

      return;
    }
    choices[selectedGoal] = choices[selectedGoal]! + 1;
    setState(() {
      stage++;
      selectedGoal = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final buttonText = stage == 4 ? 'Calculate' : 'Next';
    return Scaffold(
      backgroundColor: const Color(0xFFFFF9F3),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'assets/images/stage_$stage.png',
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: goals
                  .map(
                    (goal) => ImpactGoal(
                      goal: goal,
                      goalText: ImpactGoals.values
                          .firstWhere((element) => element.name == goal)
                          .description[stage - 1],
                      stage: stage,
                      isSelected: selectedGoal == goal,
                      onPressed: () {
                        setState(() {
                          selectedGoal = goal == selectedGoal ? '' : goal;
                        });
                      },
                    ),
                  )
                  .toList(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: ElevatedButton(
                onPressed: selectedGoal.isEmpty ? null : nextStage,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF0A3C5F),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 23),
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      buttonText,
                      style: const TextStyle(
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
      ),
    );
  }
}

class ImpactGoal extends StatelessWidget {
  const ImpactGoal(
      {super.key,
      required this.goal,
      required this.stage,
      required this.onPressed,
      required this.goalText,
      required this.isSelected});

  final String goal;
  final String goalText;
  final int stage;
  final void Function() onPressed;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return DecoratedBox(
      decoration: BoxDecoration(
        color: isSelected ? const Color(0x0f89625c) : null,
        borderRadius: BorderRadius.circular(20),
        border: isSelected
            ? Border.all(width: 3, color: const Color(0xFF0A3C5F))
            : null,
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                elevation: 0,
                shadowColor: Colors.transparent,
                backgroundColor: Colors.transparent,
              ),
              child: SvgPicture.asset(
                'assets/images/${goal}_$stage.svg',
                height: 150,
              ),
            ),
            SizedBox(height: mediaQuery.size.height * 0.025),
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 250),
              child: Text(
                goalText,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF0A3C5F),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
