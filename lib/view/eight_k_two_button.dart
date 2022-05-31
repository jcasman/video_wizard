import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/bloc/theta_response_bloc.dart';

class EightKTwoButton extends StatelessWidget {
  const EightKTwoButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Padding(
        padding: const EdgeInsets.all(7.0),
        child: Column(
          children: const [
            Text('8k'),
            Text('2fps'),
          ],
        ),
      ),
      onPressed: () {
        context.read<ThetaResponseBloc>().add(EightKEvent());
      },
    );
  }
}
