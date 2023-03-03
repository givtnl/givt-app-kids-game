// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_single_quotes, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:givt_app_kids_game/givt/impact_goal/direct_choice/direct_choice_screen.dart';

import 'package:givt_app_kids_game/givt/impact_goal/spinner/spinning_wheel_screen.dart';

class EnterUsernameScreenVar1 extends StatefulWidget {
  const EnterUsernameScreenVar1({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(
      builder: (_) => const EnterUsernameScreenVar1(),
    );
  }

  @override
  State<EnterUsernameScreenVar1> createState() =>
      _EnterUsernameScreenVar1State();
}

class _EnterUsernameScreenVar1State extends State<EnterUsernameScreenVar1> {
  final TextEditingController _controller = TextEditingController();

  String _name = "";

  void onNameEntered(BuildContext context) {
    if (_name.isEmpty) {
      return;
    }
    Navigator.of(context).push<void>(DirectChoiceGoals.route());
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Color(0xFFFFF9F3),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: mediaQuery.size.width * 0.25,
          ),
          child: Column(
            children: [
              Spacer(
                flex: 3,
              ),
              Text(
                "What's your name?",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF0A3C5F),
                ),
              ),
              Spacer(
                flex: 3,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: Color(0xFF0A3C5F),
                    width: 3,
                  ),
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: TextField(
                  controller: _controller,
                  onChanged: (value) {
                    setState(() {
                      _name = value.trim();
                    });
                  },
                  style: TextStyle(
                    fontSize: 30,
                    color: Color(0xFF3B3240),
                  ),
                  decoration: InputDecoration(border: InputBorder.none),
                  onSubmitted: (_) => onNameEntered(context),
                ),
              ),
              Spacer(
                flex: 1,
              ),
              ElevatedButton(
                onPressed: _name.isEmpty
                    ? null
                    : () {
                        onNameEntered(context);
                      },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF0A3C5F),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 23),
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: Text(
                    "Next",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Spacer(
                flex: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
