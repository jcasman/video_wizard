import 'package:flutter/material.dart';

import '../buttons/camera_control_source_button.dart';

class ButtonGroupOne extends StatelessWidget {
  const ButtonGroupOne({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const CameraControlSourceButton(),
        TextButton(
          onPressed: () {
            print('set to video mode');
          },
          //TODO:extract as separate button and add logic
          style: TextButton.styleFrom(backgroundColor: Colors.grey),
          child: const Text('Set to Video'),
        ),
        TextButton(
          onPressed: () {
            print('get format options');
          },
          //TODO:extract as separate button and add logic
          style: TextButton.styleFrom(backgroundColor: Colors.grey),
          child: const Text('Get Format'),
        ),
      ],
    );
  }
}
