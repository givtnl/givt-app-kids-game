import 'package:flutter/material.dart';

import 'package:givt_app_kids_game/givt/impact_goal/quiz/intro_first.dart';
import 'package:givt_app_kids_game/givt/impact_goal/direct_choice/enter_username_screen.dart';
import 'package:givt_app_kids_game/givt/impact_goal/game_name_choice/name_choice_screen.dart';

import 'package:givt_app_kids_game/givt/impact_goal/spinner/enter_username_screen.dart';
import 'package:givt_app_kids_game/givt/impact_goal/direct_choice/enter_username_screen.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(
      builder: (_) => const StartPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GIVT Kids Game Starter Page'),
      ),
      body: const SafeArea(child: TitleView()),
    );
  }
}

class TitleView extends StatelessWidget {
  const TitleView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 250,
            height: 64,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push<void>(NameChoice.route());
              },
              child: const Center(child: Text("Impact Goal")),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            width: 250,
            height: 64,
            child: ElevatedButton(
              onPressed: () {
                // Navigator.of(context).push(IntroFirst.route());
              },
              child: const Center(child: Text("World Overview V1")),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            width: 250,
            height: 64,
            child: ElevatedButton(
              onPressed: () {},
              child: const Center(child: Text("World Overview V2")),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            width: 250,
            height: 64,
            child: ElevatedButton(
              onPressed: () {},
              child: const Center(child: Text("Mini-game #1")),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            width: 250,
            height: 64,
            child: ElevatedButton(
              onPressed: () {},
              child: const Center(child: Text("Mini-game #2")),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
