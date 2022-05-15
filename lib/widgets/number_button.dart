import 'package:calculator/widgets/circle_button.dart';
import 'package:flutter/material.dart';

class NumberButton extends StatelessWidget {
  /// Default constructor. [number] has to be in bounds 0 - 9.
  const NumberButton({
    required this.number,
    this.backgroundColor,
    super.key,
  }) : assert(
          number >= 0 && number <= 9,
          'Parameter [number] has to be in bounds 0 - 9, but received [number]=$number',
        );

  /// [int] digit from 0 to 9. Will be shown as a child inside [CircleButton].
  final int number;

  /// [Color] for the [CircleButton]'s background. If null, defaults to
  /// [Colors.pinkAccent.shade100].
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return CircleButton(
      backgroundColor: backgroundColor ?? Colors.pinkAccent.shade100,
      child: Stack(
        children: [
          Text(
            number.toString(),
            style: const TextStyle(
              fontSize: 45,
              color: Colors.white,
            ),
          ),
          Text(
            number.toString(),
            style: TextStyle(
              fontSize: 45,
              foreground: Paint()
                ..style = PaintingStyle.stroke
                ..strokeWidth = 1
                ..color = Colors.black.withOpacity(0.5),
            ),
          ),
        ],
      ),
    );
  }
}
