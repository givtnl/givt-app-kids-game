import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:givt_app_kids_game/givt/impact_goal/quiz/intro_name_final.dart';

class EnterUsernameGalaxyScreen extends StatefulWidget {
  const EnterUsernameGalaxyScreen({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(
      builder: (_) => const EnterUsernameGalaxyScreen(),
    );
  }

  @override
  State<EnterUsernameGalaxyScreen> createState() =>
      _EnterUsernameGalaxyScreenState();
}

class _EnterUsernameGalaxyScreenState extends State<EnterUsernameGalaxyScreen> {
  final TextEditingController _controller = TextEditingController();

  String _name = '';

  void onNameEntered(BuildContext context) {
    if (_name.isEmpty) {
      return;
    }
    Navigator.of(context).push<void>(
      IntroNameFinal.route(
        name: _name,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Stack(
        children: [
          SvgPicture.asset(
            'assets/images/solar_bg.svg',
            fit: BoxFit.fill,
          ),
          SafeArea(
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
                  Image.asset(
                    'assets/images/givy_name_galaxy.png',
                  ),
                  const Spacer(
                    flex: 3,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        color: Colors.white,
                        width: 3,
                      ),
                      color: Colors.white,
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
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Name',
                        filled: true,
                        fillColor: Colors.white,
                      ),
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
                      disabledBackgroundColor: const Color(0xFFBCBCBC),
                      backgroundColor: const Color(0xFFFFB059),
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
        ],
      ),
    );
  }
}
