import 'package:flutter/material.dart';

import '../buttons/eight_k_two_button.dart';
import '../buttons/five_seven_k_button.dart';

class ButtonGroupTwo extends StatelessWidget {
  const ButtonGroupTwo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const EightKTwoButton(),
        //TODO: extract as separate Widget
        TextButton(
          style: TextButton.styleFrom(backgroundColor: Colors.grey),
          child: const Text('8k 5fps'),
          onPressed: () {},
        ),
        const FiveSevenKButton(),
      ],
    );
  }
}
