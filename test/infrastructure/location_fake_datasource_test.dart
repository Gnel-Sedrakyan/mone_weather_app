import 'package:flutter_test/flutter_test.dart';
import 'package:mone_weather_app/infrastructure/location/datasources/location_fake_datasource.dart';

void main() {
  group('LocationFakeDatasource', () {
    late LocationFakeDatasource datasource;

    setUp(() {
      datasource = LocationFakeDatasource();
    });

    test('getLocationByName returns a location with the correct name',
        () async {
      // Arrange
      const name = 'Erevan';

      // Act
      final result = await datasource.getLocationByName(name: name);

      // Assert
      expect(result.name, name);
    });
  });
}
