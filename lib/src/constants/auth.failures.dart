import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth.failures.freezed.dart';

@freezed
class Authfailures with _$Authfailures {
  const factory Authfailures.cancelledByUser() = CancelledByUser;
  const factory Authfailures.serverError() = ServerError;
  const factory Authfailures.emailAlreadyInUse() = EmailAlreadyInUse;
  const factory Authfailures.invalidEmailAndPasswordCombination() =
      InvalidEmailAndPasswordCombination;
}
