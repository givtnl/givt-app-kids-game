// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_single_quotes

import 'dart:async';

import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';

import 'package:givt_app_kids_game/givt/impact_goal/spinner/impact_goals.dart';

class SpinningWheelScreen extends StatefulWidget {
  const SpinningWheelScreen({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(
      builder: (_) => const SpinningWheelScreen(),
    );
  }

  @override
  State<SpinningWheelScreen> createState() => _SpinningWheelScreenState();
}

class _SpinningWheelScreenState extends State<SpinningWheelScreen> {
  StreamController<int> _wheelController = StreamController<int>();

  ImpactGoals? _selectedGoal;

  bool _isAnimationPlaying = false;
  int _latestRandom = -1;

  void _spinTheWheel() {
    setState(() {
      _latestRandom = Fortune.randomInt(0, ImpactGoals.values.length);
      _wheelController.add(
        _latestRandom,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF9F3),
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              flex: 5,
              child: Center(
                child: SizedBox(
                  width: 600,
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: SvgPicture.asset(
                          "assets/images/spinning_wheel_bg.svg",
                        ),
                      ),
                      Positioned.fill(
                        left: 49,
                        top: 129,
                        right: 92,
                        bottom: 188,
                        child: FortuneWheel(
                          animateFirst: false,
                          selected: _wheelController.stream,
                          indicators: [],
                          onAnimationEnd: () async {
                            setState(() {
                              _isAnimationPlaying = false;

                              _selectedGoal = ImpactGoals.values[_latestRandom];
                            });
                          },
                          onAnimationStart: () {
                            setState(() {
                              _isAnimationPlaying = true;
                            });
                          },
                          items: [
                            for (var goal in ImpactGoals.values)
                              FortuneItem(
                                child: Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Text(
                                    goal.name,
                                    style: TextStyle(
                                      fontSize: 24,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                style: FortuneItemStyle(
                                  color: goal.index.isEven
                                      ? Color(0xFFFFFFFF)
                                      : Color(0xFFFFC233),
                                  borderWidth: 0,
                                ),
                              ),
                          ],
                          onFling: _spinTheWheel,
                        ),
                      ),
                      Positioned(
                        left: 250,
                        top: 328,
                        child: CircleAvatar(
                          radius: 30,
                          backgroundColor: Color(0xFFF5755F),
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 25,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: EdgeInsets.only(right: 50),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      _selectedGoal != null
                          ? _selectedGoal!.description
                          : "Spin the wheel to find out how you can help the world!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 27,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF0A3C5F),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: ElevatedButton(
                        onPressed: _isAnimationPlaying
                            ? null
                            : () {
                                if (_selectedGoal == null) {
                                  _spinTheWheel();
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        "TODO: Discover ${_selectedGoal!.name} world!",
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  );
                                }
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
                            _selectedGoal != null
                                ? "Discover how!"
                                : "Spin it!",
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    if (_selectedGoal != null)
                      SizedBox(
                        height: 30,
                      ),
                    if (_selectedGoal != null)
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 80),
                        child: ElevatedButton(
                          onPressed: _isAnimationPlaying ? null : _spinTheWheel,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF4C96E0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            width: double.infinity,
                            alignment: Alignment.center,
                            child: Text(
                              "Spin again",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
