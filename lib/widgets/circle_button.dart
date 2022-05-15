import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  /// Default constructor.
  const CircleButton({
    required this.backgroundColor,
    required this.child,
    Key? key,
  }) : super(key: key);

  /// [Color] for the button's background.
  final Color backgroundColor;

  /// [Widget] that will be showin in the button's center.
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: backgroundColor,
        boxShadow: [
          BoxShadow(
            color: backgroundColor.withOpacity(0.8),
            spreadRadius: 2,
            blurRadius: 1,
          ),
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 3,
            blurRadius: 1,
          ),
        ],
      ),
      child: Center(
        child: FittedBox(
          child: child,
        ),
      ),
    );
  }
}
