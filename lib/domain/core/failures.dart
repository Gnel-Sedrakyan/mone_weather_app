import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.unfilledUsername({
    required String failedValue,
  }) = UnfilledUsername<T>;
  const factory ValueFailure.unfilledEmail({
    required String failedValue,
  }) = UnfilledEmail<T>;
  const factory ValueFailure.invalidEmail({
    required String failedValue,
  }) = InvalidEmail<T>;
  // passwordFailures
  const factory ValueFailure.hasNoTwoUppercaseLetters({
    required String failedValue,
  }) = HasNoTwoUppercaseLetters<T>;
  const factory ValueFailure.hasNoSpecialcaseLetters({
    required String failedValue,
  }) = HasNoSpecialcaseLetters<T>;
  const factory ValueFailure.hasNoTwoDigitsRegex({
    required String failedValue,
  }) = HasNoTwoDigitsRegex<T>;
  const factory ValueFailure.hasNoThreeLowercaseLettersRegex({
    required String failedValue,
  }) = HasNoThreeLowercaseLettersRegex<T>;
  const factory ValueFailure.multiline({
    required T failedValue,
  }) = Multiline<T>;
  const factory ValueFailure.negative({
    required T failedValue,
  }) = Negative<T>;
}
