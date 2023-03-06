import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:givt_app_kids_game/givt/impact_goal/quiz/pages/impact_goal_animal.dart';
import 'package:givt_app_kids_game/givt/impact_goal/quiz/pages/impact_goal_nature.dart';
import 'package:givt_app_kids_game/givt/impact_goal/quiz/pages/impact_goal_health.dart';
import 'package:givt_app_kids_game/givt/impact_goal/quiz/pages/impact_goal_people.dart';

enum ImpactGoals { people, animal, health, nature }

// extension RequestSortType on ImpactGoals {
//   static ImpactGoals get(String goal) {

//   }
// }

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

      switch (outcome) {
        case 'animal':
          Navigator.of(context).push(ImpactGoalAnimal.route());
          break;
        case 'nature':
          Navigator.of(context).push(ImpactGoalNature.route());
          break;
        case 'health':
          Navigator.of(context).push(ImpactGoalHealth.route());
          break;
        case 'people':
          Navigator.of(context).push(ImpactGoalPeople.route());
          break;
        default:
      }
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
                      goalText: '',
                      stage: stage,
                      onPressed: (isSelected) {
                        setState(() {
                          selectedGoal = goal;
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
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      'Next',
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
      ),
    );
  }
}

class ImpactGoal extends StatefulWidget {
  const ImpactGoal({
    super.key,
    required this.goal,
    required this.stage,
    required this.onPressed,
    required this.goalText,
  });

  final String goal;
  final String goalText;
  final int stage;
  final Function(bool) onPressed;

  @override
  State<ImpactGoal> createState() => _ImpactGoalState();
}

class _ImpactGoalState extends State<ImpactGoal> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final goal = widget.goal;
    final stage = widget.stage;
    return DecoratedBox(
      decoration: BoxDecoration(
        color: isSelected ? const Color(0x0f89625c) : null,
        borderRadius: BorderRadius.circular(20),
        // border: isSelected
        //     ? Border.all(
        //         width: 2,
        //       )
        //     : null,
      ),
      child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              setState(() {
                isSelected = !isSelected;
                widget.onPressed(isSelected);
              });
            },
            style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: const Color(0xFFFFF9F3),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(105),
              ),
            ),
            child: SvgPicture.asset(
              'assets/images/${goal}_$stage.svg',
              height: 250,
            ),
          ),
          // SizedBox(height: mediaQuery.size.height * 0.025),
          // Text(
          //   'Teddy Bear',
          //   style: TextStyle(
          //     fontSize: 35,
          //     fontWeight: FontWeight.bold,
          //     color: Color(0xFF0A3C5F),
          //   ),
          // )
        ],
      ),
    );
  }
}
