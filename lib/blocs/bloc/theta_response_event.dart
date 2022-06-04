part of 'theta_response_bloc.dart';

@immutable
abstract class ThetaResponseEvent {}

class CameraControlSourceEvent extends ThetaResponseEvent {}

class EightKEvent extends ThetaResponseEvent {}

class FiveSevenKEvent extends ThetaResponseEvent {}

class EightKEvent5 extends ThetaResponseEvent {}

class SetModeVideo extends ThetaResponseEvent {}
