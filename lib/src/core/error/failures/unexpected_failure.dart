part of 'failure.dart';

final class UnexpectedFailure extends Failure {
  final UnexpectedException exception;

  static const String title = 'Something Went Wrong';

  const UnexpectedFailure(this.exception);

  const UnexpectedFailure.empty()
    : exception = const UnexpectedException.empty();

  @override
  String toString() {
    return 'Failure: UnexpectedFailure\nException: $exception';
  }
}
