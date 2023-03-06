import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:givt_app_kids_game/givt/impact_goal/quiz/pages/discover_page.dart';

class DiscoverWorldPage extends StatelessWidget {
  const DiscoverWorldPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(
      builder: (_) => const DiscoverWorldPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 100,
            left: 50,
            child: Image.asset(
              'assets/images/givy_discover_world.png',
            ),
          ),
          Positioned(
            top: 450,
            left: 380,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(DiscoverPage.route());
              },
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
                    'Discover your world',
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
    );
  }
}
