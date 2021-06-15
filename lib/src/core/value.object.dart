import 'package:dartz/dartz.dart';
import 'package:firebase_authentor/src/constants/errors.dart';
import 'package:firebase_authentor/src/constants/value.failures.dart';
import 'package:meta/meta.dart';
import 'package:uuid/uuid.dart';

///{@template}
///Value Object
@immutable
abstract class ValueObject<T> {
  ///
  const ValueObject();
  Either<Valuefailure<T>, T> get value;

  /// Throws [UnexpectedValueError] containing the [ValueFailure]
  T getOrCrash() {
    // id = identity - same as writing (right) => right
    return value.fold((f) => throw UnexpectedValueError(f), id);
  }

  Either<Valuefailure<dynamic>, Unit> get failureOrUnit {
    return value.fold(
      left,
      (r) => right(unit),
    );
  }

  ///
  bool isValid() => value.isRight();

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is ValueObject<T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}

///
class UniqueId extends ValueObject<String> {
  const UniqueId._(this.value);

  ///
  factory UniqueId() => UniqueId._(
        right(Uuid().v1()),
      );

  ///
  factory UniqueId.fromUniqueString(String uniqueId) => UniqueId._(
        right(uniqueId),
      );

  @override
  final Either<Valuefailure<String>, String> value;
}
