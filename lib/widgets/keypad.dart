import 'package:calculator/widgets/number_keyboard.dart';
import 'package:calculator/widgets/symbol_button.dart';
import 'package:calculator/widgets/text_button.dart';
import 'package:flutter/material.dart';

class Keypad extends StatelessWidget {
  const Keypad({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
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
        const SizedBox(
          height: 12,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const NumberKeyboard(),
            const SizedBox(
              width: 12,
            ),
            Column(
              children: List.generate(
                4 + 3,
                (index) => index.isEven
                    ? const [
                        SymbolButton(
                          symbol: Icons.close,
                        ),
                        SymbolButton(
                          symbol: Icons.remove,
                        ),
                        SymbolButton(
                          symbol: Icons.add,
                        ),
                        StringButton(
                          characters: '=',
                        ),
                      ].elementAt(index ~/ 2)
                    : const SizedBox(
                        height: 12,
                      ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
