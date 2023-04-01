import 'package:flutter_test/flutter_test.dart';
import 'package:mone_weather_app/domain/location/value_objects.dart';
import 'package:mone_weather_app/infrastructure/location/datasources/position_fake_datasource.dart';

void main() {
  group('PositionDatasource', () {
    late PositionDatasource datasource;

    setUp(() {
      datasource = PositionDatasource();
    });

    test('getCurrentPositionByIp returns a position', () async {
      // Act
      final result = await datasource.getCurrentPositionByIp();

      // Assert
      expect(result, isA<Position>());
    });
  });
}
