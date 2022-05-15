import 'package:calculator/widgets/circle_button.dart';
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
          children: [
            Row(
              children: List.generate(
                4 + 3,
                (index) => index.isEven
                    ? const [
                        StringButton(
                          characters: 'AC',
                        ),
                        StringButton(
                          characters: '()',
                        ),
                        SymbolButton(
                          symbol: Icons.percent,
                        ),
                        StringButton(
                          characters: '/',
                        ),
                      ].elementAt(index ~/ 2)
                    : const SizedBox(
                        width: 12,
                      ),
              ),
            ),
            const NumberKeyboard(),
          ],
        ),
      ),
    );
  }
}
