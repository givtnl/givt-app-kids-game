import 'package:flutter/material.dart';
import 'package:givt_app_kids_game/givt/impact_goal/game_name_choice/name_choice_screen.dart';
import 'package:givt_app_kids_game/start_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppView();
  }
}

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NameChoice(),
    );
  }
}
