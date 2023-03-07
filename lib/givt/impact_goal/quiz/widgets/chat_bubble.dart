import 'package:flutter/material.dart';

const double BUBBLE_RADIUS = 16;

///basic chat bubble type
///
///chat bubble [BorderRadius] can be customized using [bubbleRadius]
///chat bubble color can be customized using [color]
///chat bubble tail can be customized  using [tail]
///chat bubble display message can be changed using [text]
///[text] is the only required parameter
///message sender can be changed using [isSender]
///chat bubble [TextStyle] can be customized using [textStyle]

class ChatBubble extends StatelessWidget {
  final double bubbleRadius;
  final bool tail;
  final TextStyle textStyle;
  final Widget text;

  const ChatBubble({
    Key? key,
    required this.text,
    this.bubbleRadius = BUBBLE_RADIUS,
    this.tail = true,
    this.textStyle = const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Color(0xFF0A3C5F),
    ),
  }) : super(key: key);

  ///chat bubble builder method
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(),
        Container(
          color: Colors.transparent,
          constraints:
              BoxConstraints(maxWidth: MediaQuery.of(context).size.width * .4),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: const Color(0xFFEAEFFD),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(bubbleRadius),
                  topRight: Radius.circular(bubbleRadius),
                  bottomRight: Radius.circular(
                    bubbleRadius,
                  ),
                ),
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24, 12, 30, 24),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        text,
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
