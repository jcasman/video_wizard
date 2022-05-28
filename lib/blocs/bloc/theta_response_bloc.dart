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
      var url = Uri.parse('http://192.168.1.1/osc/commands/execute');
      var bodyRequest = jsonEncode({
        'name': 'camera.setOptions',
        'parameters': {
          'options': {
            'fileFormat': {
              'type': 'mp4',
              'width': 7680,
              'height': 3840,
              '_codec': 'H.264/MPEG-4 AVC',
              '_frameRate': 2
            }
          }
        }
      });
      var response = await http.post(url,
          body: bodyRequest,
          headers: {'Content-Type': 'application/json;charset=utf-8'});
      emit(ThetaResponseState(
          thetaResponse: 'set to 8k 2fps\n'
              '${response.body}'));
    });
    on<FiveSevenKEvent>((event, emit) async {
      var url = Uri.parse('http://192.168.1.1/osc/commands/execute');
      var bodyRequest = jsonEncode({
        'name': 'camera.setOptions',
        'parameters': {
          'options': {
            'fileFormat': {
              'type': 'mp4',
              'width': 5760,
              'height': 2880,
              '_codec': 'H.264/MPEG-4 AVC',
              '_frameRate': 30
            }
          }
        }
      });
      var response = await http.post(url,
          body: bodyRequest,
          headers: {'Content-Type': 'application/json;charset=utf-8'});
      emit(ThetaResponseState(
          thetaResponse: 'set to 5.7k 30fps\n'
              '${response.body}'));
    });
  }
}
