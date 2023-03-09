// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
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
  final Widget text;
  final VoidCallback? onTap;

  const ChatBubble({
    required this.text,
    this.onTap,
    Key? key,
    this.bubbleRadius = BUBBLE_RADIUS,
    this.tail = true,
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
                    padding: const EdgeInsets.fromLTRB(24, 12, 30, 16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        text,
                        Visibility(
                          visible: onTap != null,
                          child: GestureDetector(
                            onTap: onTap,
                            child: Container(
                              margin: EdgeInsets.only(top: 15),
                              child: Stack(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: const Color(0xFFFFB059),
                                    radius: 24,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(4),
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: 20,
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_right,
                                    color: Color(0xFF0A3C5F),
                                    size: 50,
                                  ),
                                  // IconButton(
                                  //   onPressed: onTap,
                                  //   iconSize: 50,
                                  //   icon: const
                                  // ),
                                ],
                              ),
                            ),
                          ),
                        ),
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
