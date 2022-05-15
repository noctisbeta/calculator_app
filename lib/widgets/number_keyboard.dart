import 'package:calculator/widgets/number_button.dart';
import 'package:calculator/widgets/symbol_button.dart';
import 'package:flutter/material.dart';

class NumberKeyboard extends StatelessWidget {
  /// Default constructor.
  const NumberKeyboard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...List.generate(
          3 + 2,
          (i) => i.isEven
              ? Row(
                  children: List.generate(
                    3 + 2,
                    (j) => j.isEven
                        ? NumberButton(
                            number: i ~/ 2 + 7 - 4 * i ~/ 2 + j ~/ 2,
                          )
                        : const SizedBox(
                            width: 12,
                          ),
                  ),
                )
              : const SizedBox(
                  height: 12,
                ),
        ).followedBy(
          [
            const SizedBox(
              height: 12,
            ),
            Row(
              children: const [
                SymbolButton(
                  symbol: Icons.circle,
                  size: 10,
                ),
                SizedBox(
                  width: 12,
                ),
                NumberButton(
                  number: 0,
                ),
                SizedBox(
                  width: 12,
                ),
                SymbolButton(
                  symbol: Icons.backspace,
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
