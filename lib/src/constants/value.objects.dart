import 'package:dartz/dartz.dart';
import 'package:firebase_authentor/src/core/value.object.dart';

import 'validators.dart';
import 'value.failures.dart';


class EmailAddress extends ValueObject<String> {
  const EmailAddress._(this.value);

  ///
  factory EmailAddress(String input) {
    return EmailAddress._(
      validateEmailAddress(input),
    );
  }

  @override
  final Either<Valuefailure<String>, String> value;
}


class Password extends ValueObject<String> {
  const Password._(this.value);

  ///
  factory Password(String input) {
    return Password._(
      validatePassword(input),
    );
  }

  @override
  final Either<Valuefailure<String>, String> value;
}
