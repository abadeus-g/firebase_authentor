import 'value.failures.dart';

class NotAuthenticatedError extends Error {}

class UnexpectedValueError extends Error {
  final Valuefailure valueFailure;

  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    const explanation =
        'Encountered a ValueFailure at an unrecoverable point. Terminating.';
    return Error.safeToString('$explanation Failure was: $valueFailure');
  }
}
