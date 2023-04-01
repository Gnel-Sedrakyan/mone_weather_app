import 'package:mone_weather_app/domain/core/value_objects.dart';
import 'package:mone_weather_app/domain/location/location.dart';

class LocationModel extends Location {
  LocationModel({
    required UniqueId id,
    required String name,
  }) : super(
          id: id,
          name: name,
        );

  Map<String, dynamic> toJson() {
    return {
      'name': name,
    };
  }

  factory LocationModel.fromJson(Map<String, dynamic> map) {
    return LocationModel(
      id: UniqueId(),
      name: (map['name']),
    );
  }

  static listFromResponse(List response) {
    final data = response;
    return data
        .map(
          (tairff) => LocationModel.fromJson(
            {
              "name": tairff["name"],
            },
          ),
        )
        .toList();
  }
}
