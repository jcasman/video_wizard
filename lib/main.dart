import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'blocs/bloc/theta_response_bloc.dart';
import 'view/camera_control_source_button.dart';
import 'view/eight_k_two_button.dart';
import 'view/five_seven_k_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThetaResponseBloc(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            body: Center(
              child: BlocBuilder<ThetaResponseBloc, ThetaResponseState>(
                builder: (context, state) {
                  return SafeArea(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Expanded(
                          flex: 1,
                          child: EightKTwoButton(),
                        ),
                        const Expanded(
                          flex: 1,
                          child: FiveSevenKButton(),
                        ),
                        const Expanded(
                          flex: 1,
                          child: CameraControlSourceButton(),
                        ),
                        Expanded(
                          flex: 1,
                          child: TextButton(
                            child: Text('video'),
                            onPressed: () {
                              context
                                  .read<ThetaResponseBloc>()
                                  .add(SetModeVideo());
                            },
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: SingleChildScrollView(
                              child: Text(state.thetaResponse)),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          )),
    );
  }
}
