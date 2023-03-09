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
    var mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: const Color(0xFFFFF5EC),
      body: Column(
        children: [
          const Spacer(
            flex: 2,
          ),
          const Text(
            'Which world would you like to discover?',
            style: TextStyle(
              fontSize: 30,
              color: Color(0xFF405A66),
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: ImpactGoalWorlds.values.map((world) {
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop(world);
                  },
                  child: SizedBox(
                    width: mediaQuery.size.width * 0.24,
                    height: mediaQuery.size.width * 0.3,
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(35),
                          child: SvgPicture.asset(
                            world.image,
                            width: mediaQuery.size.width * 0.22,
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Text(
                          world.name,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 30,
                            color: Color(0xFF405A66),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
          const Spacer(
            flex: 2,
          ),
        ],
      ),
    );
  }
}
