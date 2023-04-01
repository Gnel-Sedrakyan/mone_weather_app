import 'package:flutter/material.dart';
import 'package:beamer/beamer.dart';
import 'package:mone_weather_app/presentation/core/themes/app_theme.dart';
import 'package:mone_weather_app/presentation/routes/core/router.dart';

final GlobalKey mainBeamerKey = GlobalKey();

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BeamerProvider(
      key: mainBeamerKey,
      routerDelegate: CoreRouter.routerDelegate,
      child: MaterialApp.router(
        theme: AppTheme.buildLightTheme(),
        title: 'Weather',
        debugShowCheckedModeBanner: false,
        routerDelegate: CoreRouter.routerDelegate,
        routeInformationParser: BeamerParser(),
        backButtonDispatcher:
            BeamerBackButtonDispatcher(delegate: CoreRouter.routerDelegate),
      ),
    );
  }
}
