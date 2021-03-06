// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'theta_response_bloc.dart';

@immutable
class ThetaResponseState extends Equatable {
  final String thetaResponse;
  final String testResponse =
      'It is not the critic who counts; not the man who points out how the strong man stumbles, or where the doer of deeds could have done them better. The credit belongs to the man who is actually in the arena, whose face is marred by dust and sweat and blood; who strives valiantly; who errs, who comes short again and again, because there is no effort without error and shortcoming; but who does actually strive to do the deeds; who knows great enthusiasms, the great devotions; who spends himself in a worthy cause; who at the best knows in the end the triumph of high achievement, and who at the worst, if he fails, at least fails while daring greatly, so that his place shall never be with those cold and timid souls who neither know victory nor defeat.';

  ThetaResponseState({required this.thetaResponse});

  @override
  List<Object> get props => [thetaResponse];

  factory ThetaResponseState.initial() {
    final String testResponse =
        'It is not the critic who counts; not the man who points out how the strong man stumbles, or where the doer of deeds could have done them better. The credit belongs to the man who is actually in the arena, whose face is marred by dust and sweat and blood; who strives valiantly; who errs, who comes short again and again, because there is no effort without error and shortcoming; but who does actually strive to do the deeds; who knows great enthusiasms, the great devotions; who spends himself in a worthy cause; who at the best knows in the end the triumph of high achievement, and who at the worst, if he fails, at least fails while daring greatly, so that his place shall never be with those cold and timid souls who neither know victory nor defeat.'
        'The poorest way to face life is to face it with a sneer. There are many men who feel a kind of twister pride in cynicism; there are many who confine themselves to criticism of the way others do what they themselves dare not even attempt. There is no more unhealthy being, no man less worthy of respect, than he who either really holds, or feigns to hold, an attitude of sneering disbelief toward all that is great and lofty, whether in achievement or in that noble effort which, even if it fails, comes to second achievement. A cynical habit of thought and speech, a readiness to criticise work which the critic himself never tries to perform, an intellectual aloofness which will not accept contact with lifes realities - all these are marks, not as the possessor would fain to think, of superiority but of weakness. They mark the men unfit to bear their part painfully in the stern strife of living, who seek, in the affection of contempt for the achievements of others, to hide from others and from themselves in their own weakness. The r??le is easy; there is none easier, save only the r??le of the man who sneers alike at both criticism and performance.';
    return ThetaResponseState(thetaResponse: testResponse);
  }

  ThetaResponseState copyWith({
    String? thetaResponse,
  }) {
    return ThetaResponseState(
      thetaResponse: thetaResponse ?? this.thetaResponse,
    );
  }

  @override
  bool get stringify => true;
}
