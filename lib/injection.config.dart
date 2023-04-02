// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i14;

import 'application/weather/weather_bloc.dart' as _i16;
import 'application/weather/weather_carousel/weather_carousel_bloc.dart'
    as _i15;
import 'domain/location/i_location_repository.dart' as _i17;
import 'domain/weather/i_weather_repository.dart' as _i12;
import 'infrastructure/core/injectable_module.dart' as _i19;
import 'infrastructure/core/network_api/http_network_api.dart' as _i5;
import 'infrastructure/core/network_api/i_http_network_api.dart' as _i4;
import 'infrastructure/location/datasources/i_location_datasource.dart' as _i6;
import 'infrastructure/location/datasources/i_position_datasource.dart' as _i8;
import 'infrastructure/location/datasources/location_fake_datasource.dart'
    as _i7;
import 'infrastructure/location/datasources/position_fake_datasource.dart'
    as _i9;
import 'infrastructure/location/repositoryes/location_repository.dart' as _i18;
import 'infrastructure/weather/datasources/i_weather_remote_datasource.dart'
    as _i10;
import 'infrastructure/weather/datasources/weather_fake_datasource.dart'
    as _i11;
import 'infrastructure/weather/repositoryes/weather_repository.dart' as _i13;

const String _dev = 'dev';
const String _test = 'test';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<_i3.Client>(() => firebaseInjectableModule.httpClient);
  gh.lazySingleton<_i4.IHttpNetworkApi>(() => _i5.HttpNetworkApi());
  gh.lazySingleton<_i6.ILocationRemoteDatasource>(
    () => _i7.LocationFakeDatasource(),
    registerFor: {
      _dev,
      _test,
    },
  );
  gh.lazySingleton<_i8.IPositionDatasource>(
    () => _i9.PositionDatasource(),
    registerFor: {
      _dev,
      _test,
    },
  );
  gh.lazySingleton<_i10.IWeatherRemoteDatasource>(
    () => _i11.WeatherFakeDatasource(),
    registerFor: {
      _dev,
      _test,
    },
  );
  gh.lazySingleton<_i12.IWeatherRepository>(() => _i13.WeatherRepository(
      weatehrRemoteDataSource: get<_i10.IWeatherRemoteDatasource>()));
  await gh.factoryAsync<_i14.SharedPreferences>(
    () => firebaseInjectableModule.prefs,
    preResolve: true,
  );
  gh.factory<_i15.WeatherCarouselState>(
      () => _i15.WeatherCarouselState.initial());
  gh.factory<_i16.WeatherState>(() => _i16.WeatherState.initial());
  gh.lazySingleton<_i17.ILocationRepository>(() => _i18.LocationRepository(
        positionDatasource: get<_i8.IPositionDatasource>(),
        locationRemoteDataSource: get<_i6.ILocationRemoteDatasource>(),
      ));
  gh.factory<_i16.WeatherBloc>(() => _i16.WeatherBloc(
        get<_i16.WeatherState>(),
        get<_i12.IWeatherRepository>(),
        get<_i17.ILocationRepository>(),
      ));
  gh.factory<_i15.WeatherCarouselBloc>(
      () => _i15.WeatherCarouselBloc(get<_i15.WeatherCarouselState>()));
  return get;
}

class _$FirebaseInjectableModule extends _i19.FirebaseInjectableModule {}
