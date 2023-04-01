import 'package:mone_weather_app/presentation/pages/weather/main_screen.dart';
import 'package:mone_weather_app/presentation/routes/core/location.dart';
import 'package:beamer/beamer.dart';

class CoreRouter {
  static final routerDelegate = BeamerDelegate(
    initialPath: MainScreen.location,
    locationBuilder: BeamerLocationBuilder(
      beamLocations: [
        HomeLocation(),
      ],
    ),
  );
}
