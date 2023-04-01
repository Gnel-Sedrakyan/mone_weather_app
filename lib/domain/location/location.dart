import 'package:mone_weather_app/domain/core/entity.dart';
import 'package:mone_weather_app/domain/core/value_objects.dart';

class Location implements IEntity {
  @override
  final UniqueId id;
  final String name;

  Location({
    required this.id,
    required this.name,
  });

  Location copyWith({
    UniqueId? id,
    String? name,
  }) {
    return Location(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Location && other.id == id;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode;

  @override
  String toString() => 'Location:$name';
}
