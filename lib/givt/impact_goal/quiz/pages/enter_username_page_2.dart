import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:givt_app_kids_game/givt/impact_goal/spinner/spinning_wheel_screen.dart';

class EnterUsernameScreen extends StatefulWidget {
  const EnterUsernameScreen({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(
      builder: (_) => const EnterUsernameScreen(),
    );
  }

  @override
  State<EnterUsernameScreen> createState() => _EnterUsernameScreenState();
}

class _EnterUsernameScreenState extends State<EnterUsernameScreen> {
  final TextEditingController _controller = TextEditingController();

  String _name = '';

  void onNameEntered(BuildContext context) {
    if (_name.isEmpty) {
      return;
    }
    Navigator.of(context).push<void>(SpinningWheelScreen.route());
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: const Color(0xFFFFF9F3),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: mediaQuery.size.width * 0.25,
          ),
          child: Column(
            children: [
              const Spacer(
                flex: 3,
              ),
              SvgPicture.asset(
                'assets/images/givy_name.svg',
              ),
              const Spacer(
                flex: 3,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: const Color(0xFF0A3C5F),
                    width: 3,
                  ),
                ),
                padding: const EdgeInsets.symmetric(
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
                  style: const TextStyle(
                    fontSize: 30,
                    color: Color(0xFF3B3240),
                  ),
                  decoration: const InputDecoration(border: InputBorder.none),
                  onSubmitted: (_) => onNameEntered(context),
                ),
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: _name.isEmpty
                    ? null
                    : () {
                        onNameEntered(context);
                      },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF0A3C5F),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 23),
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: const Text(
                    'Next',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const Spacer(
                flex: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
