import 'package:calculator/widgets/circle_button.dart';
import 'package:flutter/material.dart';

class SymbolButton extends StatelessWidget {
  const SymbolButton({
    required this.symbol,
    this.backgroundColor,
    this.size,
    Key? key,
  }) : super(key: key);

  final IconData symbol;

  /// [Color] for the [CircleButton]'s background. If null, defaults to
  /// [Colors.pinkAccent.shade100].
  final Color? backgroundColor;

  final double? size;

  @override
  Widget build(BuildContext context) {
    return CircleButton(
      backgroundColor: backgroundColor ?? Colors.pinkAccent.shade100,
      child: Icon(
        symbol,
        color: Colors.white,
        size: size ?? 30,
        shadows: const [
          BoxShadow(
            color: Colors.black,
            blurRadius: 5,
          )
        ],
      ),
    );
  }
}
