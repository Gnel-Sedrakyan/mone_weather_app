import 'package:dartz/dartz.dart';
import 'package:mone_weather_app/domain/core/failures.dart';
import 'package:mone_weather_app/domain/core/value_objects.dart';

class Temperature extends ValueObject<double> {
  @override
  final Either<ValueFailure<double>, double> value;

  factory Temperature(double input) {
    return Temperature._(
      Right(input),
    );
  }

  const Temperature._(this.value);
  get temperatureInFahrenheit => value.getOrElse(() => 0) * 1.8;
  get temperatureInCelsius => value.getOrElse(() => 0);
}
