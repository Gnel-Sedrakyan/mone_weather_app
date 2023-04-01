import 'package:flutter_test/flutter_test.dart';
import 'package:mone_weather_app/infrastructure/weather/datasources/weather_fake_datasource.dart';

void main() {
  group('WeatherRemoteDatasource', () {
    //TODO mock the real datasource, add other tests..............
    late WeatherFakeDatasource datasource;
    setUp(() {
      datasource = WeatherFakeDatasource();
    });

    test('getWeatherForLocationByDaysRange returns a list of weather models',
        () async {
      // Arrange
      const location = 'Erevan';
      const daysRange = 5;

      // Act
      final result = await datasource.getWeatherForLocationByDaysRange(
        location: location,
        daysRange: daysRange,
      );
      // Assert
      expect(result.length, daysRange);
    });
  });
}
