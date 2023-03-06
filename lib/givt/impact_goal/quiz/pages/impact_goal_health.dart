import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ImpactGoalHealth extends StatefulWidget {
  const ImpactGoalHealth({super.key});

  @override
  State<ImpactGoalHealth> createState() => _ImpactGoalHealthState();
}

class _ImpactGoalHealthState extends State<ImpactGoalHealth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SvgPicture.asset(
            'assets/images/impact_goal_health.svg',
            fit: BoxFit.fill,
          ),
          Positioned(
            left: 50,
            top: 50,
            width: 950,
            child: Stack(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 20,
                  ),
                  child: Image.asset(
                    'assets/images/givy.png',
                    fit: BoxFit.fill,
                    scale: 1.5,
                  ),
                ),
                Positioned(
                  top: 20,
                  left: 200,
                  width: 850,
                  child: SvgPicture.asset(
                    'assets/images/bubble.svg',
                  ),
                ),
                Positioned(
                  top: 50,
                  left: 250,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Great, based on your skills and preferences, you could be",
                        style: TextStyle(
                          fontSize: 15,
                          color: const Color(0xFF0A3C5F),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "of great help in Rescue Realm. Are you ready to explore?",
                        style: TextStyle(
                          fontSize: 15,
                          color: const Color(0xFF0A3C5F),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 250,
            top: 400,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF0A3C5F),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 180),
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
        ],
      ),
    );
  }
}
