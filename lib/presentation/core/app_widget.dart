import 'package:flutter/material.dart';
import 'package:beamer/beamer.dart';
import 'package:mone_weather_app/application/weather/weather_bloc.dart';
import 'package:mone_weather_app/application/weather/weather_carousel/weather_carousel_bloc.dart';
import 'package:mone_weather_app/injection.dart';
import 'package:mone_weather_app/presentation/core/themes/app_theme.dart';
import 'package:mone_weather_app/presentation/routes/core/router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final GlobalKey mainBeamerKey = GlobalKey();

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (_) => getIt<WeatherBloc>()
              ..add(
                const WeatherEvent.addLocationByCurrentPosition(),
              )),
        BlocProvider(create: (_) => getIt<WeatherCarouselBloc>()),
      ],
      // child: MultiBlocListener(
      //   listeners: [
      //     BlocListener(listener: (_, __) {})
      //     //!! DO NOT REMOVE (use for calling events on creation)
      //   ],
      child: BeamerProvider(
        key: mainBeamerKey,
        routerDelegate: CoreRouter.routerDelegate,
        child: MaterialApp.router(
          theme: AppTheme.buildLightTheme(),
          title: 'Weather',
          debugShowCheckedModeBanner: false,
          //TODO add localisation
          routerDelegate: CoreRouter.routerDelegate,
          routeInformationParser: BeamerParser(),
          backButtonDispatcher:
              BeamerBackButtonDispatcher(delegate: CoreRouter.routerDelegate),
        ),
        // ),
      ),
    );
  }
}
