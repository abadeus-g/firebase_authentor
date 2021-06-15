import 'package:freezed_annotation/freezed_annotation.dart';

part 'value.failures.freezed.dart';

@freezed
class Valuefailure<T> with _$Valuefailure<T> {
  const factory Valuefailure.invalidEmail({
    required T failedValue,
  }) = InvalidEmail<T>;
  const factory Valuefailure.shortPassword({
    required T failedValue,
  }) = ShortPassword<T>;
 
}
