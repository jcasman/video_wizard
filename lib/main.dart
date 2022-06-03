import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'blocs/bloc/theta_response_bloc.dart';
import 'view/groups/button_group_one.dart';
import 'view/groups/button_group_two.dart';

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
                          child: ButtonGroupOne(),
                        ),
                        const Expanded(
                          flex: 1,
                          child: ButtonGroupTwo(),
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
