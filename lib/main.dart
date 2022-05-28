import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'blocs/bloc/theta_response_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThetaResponseBloc(),
      child: MaterialApp(home: Scaffold(
        body: Center(
          child: BlocBuilder<ThetaResponseBloc, ThetaResponseState>(
            builder: (context, state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Expanded(
                      flex: 2,
                      child: TextButton(
                        child: Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: Column(
                            children: [
                              Text('8k'),
                              Text('2fps'),
                            ],
                          ),
                        ),
                        onPressed: () {
                          context.read<ThetaResponseBloc>().add(EightKEvent());
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: TextButton(
                      onPressed: () {
                        context
                            .read<ThetaResponseBloc>()
                            .add(FiveSevenKEvent());
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Column(
                          children: [
                            Text('5.7k'),
                            Text('30fps'),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: SingleChildScrollView(
                        child:
                            Container(child: Text('${state.thetaResponse}'))),
                  ),
                ],
              );
            },
          ),
        ),
      )),
    );
  }
}
