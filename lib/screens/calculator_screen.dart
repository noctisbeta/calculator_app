import 'package:calculator/widgets/circle_button.dart';
import 'package:calculator/widgets/keypad.dart';
import 'package:calculator/widgets/number_button.dart';
import 'package:calculator/widgets/number_keyboard.dart';
import 'package:calculator/widgets/symbol_button.dart';
import 'package:calculator/widgets/text_button.dart';
import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.pink.shade200,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                child: const Center(
                  child: Text(
                    '3x3=9',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 45,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            const Keypad(),
            const SizedBox(
              height: 24,
            ),
          ],
        ),
      ),
    );
  }
}
