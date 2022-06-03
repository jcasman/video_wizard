import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../blocs/bloc/theta_response_bloc.dart';

class FiveSevenKButton extends StatelessWidget {
  const FiveSevenKButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.read<ThetaResponseBloc>().add(FiveSevenKEvent());
      },
      child: const Text('5.7k 30fps'),
    );
  }
}
