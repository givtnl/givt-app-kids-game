import 'package:flutter/material.dart';
import 'package:givt_app_kids_game/game/game.dart';
import 'package:givt_app_kids_game/givt/impact_goal/direct_choice/dircet_choice_screen.dart';
import 'package:givt_app_kids_game/l10n/l10n.dart';

import 'package:givt_app_kids_game/givt/impact_goal/spinner/enter_username_screen.dart';

class TitlePage extends StatelessWidget {
  const TitlePage({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(
      builder: (_) => const TitlePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.titleAppBarTitle),
      ),
      body: const SafeArea(child: TitleView()),
    );
  }
}

class TitleView extends StatelessWidget {
  const TitleView({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 250,
            height: 64,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push<void>(DirectChoiceGoals.route());
              },
              child: const Center(child: Text("Idea 1")),
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
              child: const Center(child: Text("Idea 2/Variant 1")),
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
              child: const Center(child: Text("Idea 2/Variant 2")),
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
                Navigator.of(context).push<void>(EnterUsernameScreen.route());
              },
              child: const Center(child: Text("Idea 3")),
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
                Navigator.of(context)
                    .pushReplacement<void, void>(GamePage.route());
              },
              child: const Center(child: Text("Unicorn Game")),
            ),
          ),
        ],
      ),
    );
  }
}
