import 'package:calculator/widgets/circle_button.dart';
import 'package:flutter/material.dart';

class StringButton extends StatelessWidget {
  /// Default constructor.
  const StringButton({
    required this.characters,
    this.backgroundColor,
    Key? key,
  }) : super(key: key);

  /// [Color] for the [CircleButton]'s background. If null, defaults to
  /// [Colors.pinkAccent.shade100].
  final Color? backgroundColor;

  final String characters;

  @override
  Widget build(BuildContext context) {
    return CircleButton(
      backgroundColor: backgroundColor ?? Colors.pinkAccent.shade100,
      child: Stack(
        children: [
          Text(
            characters,
            style: const TextStyle(
              fontSize: 45,
              color: Colors.white,
            ),
          ),
          Text(
            characters,
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
