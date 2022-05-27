import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;

part 'theta_response_event.dart';
part 'theta_response_state.dart';

class ThetaResponseBloc extends Bloc<ThetaResponseEvent, ThetaResponseState> {
  ThetaResponseBloc() : super(ThetaResponseState.initial()) {
    on<EightKEvent>((event, emit) async {
      var url = Uri.parse('http://192.168.1.1/osc/info');
      var response = await http.get(url,
          headers: {'Content-Type': 'application/json;charset=utf-8'});
      emit(ThetaResponseState(
          thetaResponse: 'set to 8k 2fps\n'
              '${response.body}'));
    });
    on<FiveSevenKEvent>((event, emit) async {
      var url = Uri.parse('https://jsonplaceholder.typicode.com/posts');
      var bodyRequest =
          jsonEncode({'title': 'foo', 'body': 'bar', 'userId': 1});
      var response = await http.post(url,
          body: bodyRequest,
          headers: {'Content-Type': 'application/json;charset=utf-8'});
      emit(ThetaResponseState(
          thetaResponse: 'set to 5.7k 30fps\n'
              '${response.body}'));
    });
  }
}
