// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weather_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WeatherState {
  List<LocationWeather> get locationWeatherList =>
      throw _privateConstructorUsedError;
  bool get isLoadingNewWeather => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherStateCopyWith<WeatherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherStateCopyWith<$Res> {
  factory $WeatherStateCopyWith(
          WeatherState value, $Res Function(WeatherState) then) =
      _$WeatherStateCopyWithImpl<$Res>;
  $Res call(
      {List<LocationWeather> locationWeatherList, bool isLoadingNewWeather});
}

/// @nodoc
class _$WeatherStateCopyWithImpl<$Res> implements $WeatherStateCopyWith<$Res> {
  _$WeatherStateCopyWithImpl(this._value, this._then);

  final WeatherState _value;
  // ignore: unused_field
  final $Res Function(WeatherState) _then;

  @override
  $Res call({
    Object? locationWeatherList = freezed,
    Object? isLoadingNewWeather = freezed,
  }) {
    return _then(_value.copyWith(
      locationWeatherList: locationWeatherList == freezed
          ? _value.locationWeatherList
          : locationWeatherList // ignore: cast_nullable_to_non_nullable
              as List<LocationWeather>,
      isLoadingNewWeather: isLoadingNewWeather == freezed
          ? _value.isLoadingNewWeather
          : isLoadingNewWeather // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_WeatherStateCopyWith<$Res>
    implements $WeatherStateCopyWith<$Res> {
  factory _$$_WeatherStateCopyWith(
          _$_WeatherState value, $Res Function(_$_WeatherState) then) =
      __$$_WeatherStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<LocationWeather> locationWeatherList, bool isLoadingNewWeather});
}

/// @nodoc
class __$$_WeatherStateCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res>
    implements _$$_WeatherStateCopyWith<$Res> {
  __$$_WeatherStateCopyWithImpl(
      _$_WeatherState _value, $Res Function(_$_WeatherState) _then)
      : super(_value, (v) => _then(v as _$_WeatherState));

  @override
  _$_WeatherState get _value => super._value as _$_WeatherState;

  @override
  $Res call({
    Object? locationWeatherList = freezed,
    Object? isLoadingNewWeather = freezed,
  }) {
    return _then(_$_WeatherState(
      locationWeatherList: locationWeatherList == freezed
          ? _value._locationWeatherList
          : locationWeatherList // ignore: cast_nullable_to_non_nullable
              as List<LocationWeather>,
      isLoadingNewWeather: isLoadingNewWeather == freezed
          ? _value.isLoadingNewWeather
          : isLoadingNewWeather // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_WeatherState extends _WeatherState {
  const _$_WeatherState(
      {required final List<LocationWeather> locationWeatherList,
      required this.isLoadingNewWeather})
      : _locationWeatherList = locationWeatherList,
        super._();

  final List<LocationWeather> _locationWeatherList;
  @override
  List<LocationWeather> get locationWeatherList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_locationWeatherList);
  }

  @override
  final bool isLoadingNewWeather;

  @override
  String toString() {
    return 'WeatherState(locationWeatherList: $locationWeatherList, isLoadingNewWeather: $isLoadingNewWeather)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherState &&
            const DeepCollectionEquality()
                .equals(other._locationWeatherList, _locationWeatherList) &&
            const DeepCollectionEquality()
                .equals(other.isLoadingNewWeather, isLoadingNewWeather));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_locationWeatherList),
      const DeepCollectionEquality().hash(isLoadingNewWeather));

  @JsonKey(ignore: true)
  @override
  _$$_WeatherStateCopyWith<_$_WeatherState> get copyWith =>
      __$$_WeatherStateCopyWithImpl<_$_WeatherState>(this, _$identity);
}

abstract class _WeatherState extends WeatherState {
  const factory _WeatherState(
      {required final List<LocationWeather> locationWeatherList,
      required final bool isLoadingNewWeather}) = _$_WeatherState;
  const _WeatherState._() : super._();

  @override
  List<LocationWeather> get locationWeatherList;
  @override
  bool get isLoadingNewWeather;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherStateCopyWith<_$_WeatherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WeatherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int dateRange, LocationWeather locationWeather)
        dateRangeChanged,
    required TResult Function(LocationWeather locationWeather)
        deleteLocationWeather,
    required TResult Function(String locationName) addLocationByName,
    required TResult Function() addLocationByCurrentPosition,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int dateRange, LocationWeather locationWeather)?
        dateRangeChanged,
    TResult Function(LocationWeather locationWeather)? deleteLocationWeather,
    TResult Function(String locationName)? addLocationByName,
    TResult Function()? addLocationByCurrentPosition,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int dateRange, LocationWeather locationWeather)?
        dateRangeChanged,
    TResult Function(LocationWeather locationWeather)? deleteLocationWeather,
    TResult Function(String locationName)? addLocationByName,
    TResult Function()? addLocationByCurrentPosition,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DateRangeChanged value) dateRangeChanged,
    required TResult Function(DeleteLocationWeather value)
        deleteLocationWeather,
    required TResult Function(AddLocationByName value) addLocationByName,
    required TResult Function(AddLocationByCurrentPosition value)
        addLocationByCurrentPosition,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DateRangeChanged value)? dateRangeChanged,
    TResult Function(DeleteLocationWeather value)? deleteLocationWeather,
    TResult Function(AddLocationByName value)? addLocationByName,
    TResult Function(AddLocationByCurrentPosition value)?
        addLocationByCurrentPosition,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DateRangeChanged value)? dateRangeChanged,
    TResult Function(DeleteLocationWeather value)? deleteLocationWeather,
    TResult Function(AddLocationByName value)? addLocationByName,
    TResult Function(AddLocationByCurrentPosition value)?
        addLocationByCurrentPosition,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherEventCopyWith<$Res> {
  factory $WeatherEventCopyWith(
          WeatherEvent value, $Res Function(WeatherEvent) then) =
      _$WeatherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$WeatherEventCopyWithImpl<$Res> implements $WeatherEventCopyWith<$Res> {
  _$WeatherEventCopyWithImpl(this._value, this._then);

  final WeatherEvent _value;
  // ignore: unused_field
  final $Res Function(WeatherEvent) _then;
}

/// @nodoc
abstract class _$$DateRangeChangedCopyWith<$Res> {
  factory _$$DateRangeChangedCopyWith(
          _$DateRangeChanged value, $Res Function(_$DateRangeChanged) then) =
      __$$DateRangeChangedCopyWithImpl<$Res>;
  $Res call({int dateRange, LocationWeather locationWeather});
}

/// @nodoc
class __$$DateRangeChangedCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res>
    implements _$$DateRangeChangedCopyWith<$Res> {
  __$$DateRangeChangedCopyWithImpl(
      _$DateRangeChanged _value, $Res Function(_$DateRangeChanged) _then)
      : super(_value, (v) => _then(v as _$DateRangeChanged));

  @override
  _$DateRangeChanged get _value => super._value as _$DateRangeChanged;

  @override
  $Res call({
    Object? dateRange = freezed,
    Object? locationWeather = freezed,
  }) {
    return _then(_$DateRangeChanged(
      dateRange: dateRange == freezed
          ? _value.dateRange
          : dateRange // ignore: cast_nullable_to_non_nullable
              as int,
      locationWeather: locationWeather == freezed
          ? _value.locationWeather
          : locationWeather // ignore: cast_nullable_to_non_nullable
              as LocationWeather,
    ));
  }
}

/// @nodoc

class _$DateRangeChanged implements DateRangeChanged {
  const _$DateRangeChanged(
      {required this.dateRange, required this.locationWeather});

  @override
  final int dateRange;
  @override
  final LocationWeather locationWeather;

  @override
  String toString() {
    return 'WeatherEvent.dateRangeChanged(dateRange: $dateRange, locationWeather: $locationWeather)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DateRangeChanged &&
            const DeepCollectionEquality().equals(other.dateRange, dateRange) &&
            const DeepCollectionEquality()
                .equals(other.locationWeather, locationWeather));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(dateRange),
      const DeepCollectionEquality().hash(locationWeather));

  @JsonKey(ignore: true)
  @override
  _$$DateRangeChangedCopyWith<_$DateRangeChanged> get copyWith =>
      __$$DateRangeChangedCopyWithImpl<_$DateRangeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int dateRange, LocationWeather locationWeather)
        dateRangeChanged,
    required TResult Function(LocationWeather locationWeather)
        deleteLocationWeather,
    required TResult Function(String locationName) addLocationByName,
    required TResult Function() addLocationByCurrentPosition,
  }) {
    return dateRangeChanged(dateRange, locationWeather);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int dateRange, LocationWeather locationWeather)?
        dateRangeChanged,
    TResult Function(LocationWeather locationWeather)? deleteLocationWeather,
    TResult Function(String locationName)? addLocationByName,
    TResult Function()? addLocationByCurrentPosition,
  }) {
    return dateRangeChanged?.call(dateRange, locationWeather);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int dateRange, LocationWeather locationWeather)?
        dateRangeChanged,
    TResult Function(LocationWeather locationWeather)? deleteLocationWeather,
    TResult Function(String locationName)? addLocationByName,
    TResult Function()? addLocationByCurrentPosition,
    required TResult orElse(),
  }) {
    if (dateRangeChanged != null) {
      return dateRangeChanged(dateRange, locationWeather);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DateRangeChanged value) dateRangeChanged,
    required TResult Function(DeleteLocationWeather value)
        deleteLocationWeather,
    required TResult Function(AddLocationByName value) addLocationByName,
    required TResult Function(AddLocationByCurrentPosition value)
        addLocationByCurrentPosition,
  }) {
    return dateRangeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DateRangeChanged value)? dateRangeChanged,
    TResult Function(DeleteLocationWeather value)? deleteLocationWeather,
    TResult Function(AddLocationByName value)? addLocationByName,
    TResult Function(AddLocationByCurrentPosition value)?
        addLocationByCurrentPosition,
  }) {
    return dateRangeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DateRangeChanged value)? dateRangeChanged,
    TResult Function(DeleteLocationWeather value)? deleteLocationWeather,
    TResult Function(AddLocationByName value)? addLocationByName,
    TResult Function(AddLocationByCurrentPosition value)?
        addLocationByCurrentPosition,
    required TResult orElse(),
  }) {
    if (dateRangeChanged != null) {
      return dateRangeChanged(this);
    }
    return orElse();
  }
}

abstract class DateRangeChanged implements WeatherEvent {
  const factory DateRangeChanged(
      {required final int dateRange,
      required final LocationWeather locationWeather}) = _$DateRangeChanged;

  int get dateRange;
  LocationWeather get locationWeather;
  @JsonKey(ignore: true)
  _$$DateRangeChangedCopyWith<_$DateRangeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteLocationWeatherCopyWith<$Res> {
  factory _$$DeleteLocationWeatherCopyWith(_$DeleteLocationWeather value,
          $Res Function(_$DeleteLocationWeather) then) =
      __$$DeleteLocationWeatherCopyWithImpl<$Res>;
  $Res call({LocationWeather locationWeather});
}

/// @nodoc
class __$$DeleteLocationWeatherCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res>
    implements _$$DeleteLocationWeatherCopyWith<$Res> {
  __$$DeleteLocationWeatherCopyWithImpl(_$DeleteLocationWeather _value,
      $Res Function(_$DeleteLocationWeather) _then)
      : super(_value, (v) => _then(v as _$DeleteLocationWeather));

  @override
  _$DeleteLocationWeather get _value => super._value as _$DeleteLocationWeather;

  @override
  $Res call({
    Object? locationWeather = freezed,
  }) {
    return _then(_$DeleteLocationWeather(
      locationWeather: locationWeather == freezed
          ? _value.locationWeather
          : locationWeather // ignore: cast_nullable_to_non_nullable
              as LocationWeather,
    ));
  }
}

/// @nodoc

class _$DeleteLocationWeather implements DeleteLocationWeather {
  const _$DeleteLocationWeather({required this.locationWeather});

  @override
  final LocationWeather locationWeather;

  @override
  String toString() {
    return 'WeatherEvent.deleteLocationWeather(locationWeather: $locationWeather)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteLocationWeather &&
            const DeepCollectionEquality()
                .equals(other.locationWeather, locationWeather));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(locationWeather));

  @JsonKey(ignore: true)
  @override
  _$$DeleteLocationWeatherCopyWith<_$DeleteLocationWeather> get copyWith =>
      __$$DeleteLocationWeatherCopyWithImpl<_$DeleteLocationWeather>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int dateRange, LocationWeather locationWeather)
        dateRangeChanged,
    required TResult Function(LocationWeather locationWeather)
        deleteLocationWeather,
    required TResult Function(String locationName) addLocationByName,
    required TResult Function() addLocationByCurrentPosition,
  }) {
    return deleteLocationWeather(locationWeather);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int dateRange, LocationWeather locationWeather)?
        dateRangeChanged,
    TResult Function(LocationWeather locationWeather)? deleteLocationWeather,
    TResult Function(String locationName)? addLocationByName,
    TResult Function()? addLocationByCurrentPosition,
  }) {
    return deleteLocationWeather?.call(locationWeather);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int dateRange, LocationWeather locationWeather)?
        dateRangeChanged,
    TResult Function(LocationWeather locationWeather)? deleteLocationWeather,
    TResult Function(String locationName)? addLocationByName,
    TResult Function()? addLocationByCurrentPosition,
    required TResult orElse(),
  }) {
    if (deleteLocationWeather != null) {
      return deleteLocationWeather(locationWeather);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DateRangeChanged value) dateRangeChanged,
    required TResult Function(DeleteLocationWeather value)
        deleteLocationWeather,
    required TResult Function(AddLocationByName value) addLocationByName,
    required TResult Function(AddLocationByCurrentPosition value)
        addLocationByCurrentPosition,
  }) {
    return deleteLocationWeather(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DateRangeChanged value)? dateRangeChanged,
    TResult Function(DeleteLocationWeather value)? deleteLocationWeather,
    TResult Function(AddLocationByName value)? addLocationByName,
    TResult Function(AddLocationByCurrentPosition value)?
        addLocationByCurrentPosition,
  }) {
    return deleteLocationWeather?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DateRangeChanged value)? dateRangeChanged,
    TResult Function(DeleteLocationWeather value)? deleteLocationWeather,
    TResult Function(AddLocationByName value)? addLocationByName,
    TResult Function(AddLocationByCurrentPosition value)?
        addLocationByCurrentPosition,
    required TResult orElse(),
  }) {
    if (deleteLocationWeather != null) {
      return deleteLocationWeather(this);
    }
    return orElse();
  }
}

abstract class DeleteLocationWeather implements WeatherEvent {
  const factory DeleteLocationWeather(
          {required final LocationWeather locationWeather}) =
      _$DeleteLocationWeather;

  LocationWeather get locationWeather;
  @JsonKey(ignore: true)
  _$$DeleteLocationWeatherCopyWith<_$DeleteLocationWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddLocationByNameCopyWith<$Res> {
  factory _$$AddLocationByNameCopyWith(
          _$AddLocationByName value, $Res Function(_$AddLocationByName) then) =
      __$$AddLocationByNameCopyWithImpl<$Res>;
  $Res call({String locationName});
}

/// @nodoc
class __$$AddLocationByNameCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res>
    implements _$$AddLocationByNameCopyWith<$Res> {
  __$$AddLocationByNameCopyWithImpl(
      _$AddLocationByName _value, $Res Function(_$AddLocationByName) _then)
      : super(_value, (v) => _then(v as _$AddLocationByName));

  @override
  _$AddLocationByName get _value => super._value as _$AddLocationByName;

  @override
  $Res call({
    Object? locationName = freezed,
  }) {
    return _then(_$AddLocationByName(
      locationName: locationName == freezed
          ? _value.locationName
          : locationName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddLocationByName implements AddLocationByName {
  const _$AddLocationByName({required this.locationName});

  @override
  final String locationName;

  @override
  String toString() {
    return 'WeatherEvent.addLocationByName(locationName: $locationName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddLocationByName &&
            const DeepCollectionEquality()
                .equals(other.locationName, locationName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(locationName));

  @JsonKey(ignore: true)
  @override
  _$$AddLocationByNameCopyWith<_$AddLocationByName> get copyWith =>
      __$$AddLocationByNameCopyWithImpl<_$AddLocationByName>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int dateRange, LocationWeather locationWeather)
        dateRangeChanged,
    required TResult Function(LocationWeather locationWeather)
        deleteLocationWeather,
    required TResult Function(String locationName) addLocationByName,
    required TResult Function() addLocationByCurrentPosition,
  }) {
    return addLocationByName(locationName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int dateRange, LocationWeather locationWeather)?
        dateRangeChanged,
    TResult Function(LocationWeather locationWeather)? deleteLocationWeather,
    TResult Function(String locationName)? addLocationByName,
    TResult Function()? addLocationByCurrentPosition,
  }) {
    return addLocationByName?.call(locationName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int dateRange, LocationWeather locationWeather)?
        dateRangeChanged,
    TResult Function(LocationWeather locationWeather)? deleteLocationWeather,
    TResult Function(String locationName)? addLocationByName,
    TResult Function()? addLocationByCurrentPosition,
    required TResult orElse(),
  }) {
    if (addLocationByName != null) {
      return addLocationByName(locationName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DateRangeChanged value) dateRangeChanged,
    required TResult Function(DeleteLocationWeather value)
        deleteLocationWeather,
    required TResult Function(AddLocationByName value) addLocationByName,
    required TResult Function(AddLocationByCurrentPosition value)
        addLocationByCurrentPosition,
  }) {
    return addLocationByName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DateRangeChanged value)? dateRangeChanged,
    TResult Function(DeleteLocationWeather value)? deleteLocationWeather,
    TResult Function(AddLocationByName value)? addLocationByName,
    TResult Function(AddLocationByCurrentPosition value)?
        addLocationByCurrentPosition,
  }) {
    return addLocationByName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DateRangeChanged value)? dateRangeChanged,
    TResult Function(DeleteLocationWeather value)? deleteLocationWeather,
    TResult Function(AddLocationByName value)? addLocationByName,
    TResult Function(AddLocationByCurrentPosition value)?
        addLocationByCurrentPosition,
    required TResult orElse(),
  }) {
    if (addLocationByName != null) {
      return addLocationByName(this);
    }
    return orElse();
  }
}

abstract class AddLocationByName implements WeatherEvent {
  const factory AddLocationByName({required final String locationName}) =
      _$AddLocationByName;

  String get locationName;
  @JsonKey(ignore: true)
  _$$AddLocationByNameCopyWith<_$AddLocationByName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddLocationByCurrentPositionCopyWith<$Res> {
  factory _$$AddLocationByCurrentPositionCopyWith(
          _$AddLocationByCurrentPosition value,
          $Res Function(_$AddLocationByCurrentPosition) then) =
      __$$AddLocationByCurrentPositionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddLocationByCurrentPositionCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res>
    implements _$$AddLocationByCurrentPositionCopyWith<$Res> {
  __$$AddLocationByCurrentPositionCopyWithImpl(
      _$AddLocationByCurrentPosition _value,
      $Res Function(_$AddLocationByCurrentPosition) _then)
      : super(_value, (v) => _then(v as _$AddLocationByCurrentPosition));

  @override
  _$AddLocationByCurrentPosition get _value =>
      super._value as _$AddLocationByCurrentPosition;
}

/// @nodoc

class _$AddLocationByCurrentPosition implements AddLocationByCurrentPosition {
  const _$AddLocationByCurrentPosition();

  @override
  String toString() {
    return 'WeatherEvent.addLocationByCurrentPosition()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddLocationByCurrentPosition);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int dateRange, LocationWeather locationWeather)
        dateRangeChanged,
    required TResult Function(LocationWeather locationWeather)
        deleteLocationWeather,
    required TResult Function(String locationName) addLocationByName,
    required TResult Function() addLocationByCurrentPosition,
  }) {
    return addLocationByCurrentPosition();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int dateRange, LocationWeather locationWeather)?
        dateRangeChanged,
    TResult Function(LocationWeather locationWeather)? deleteLocationWeather,
    TResult Function(String locationName)? addLocationByName,
    TResult Function()? addLocationByCurrentPosition,
  }) {
    return addLocationByCurrentPosition?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int dateRange, LocationWeather locationWeather)?
        dateRangeChanged,
    TResult Function(LocationWeather locationWeather)? deleteLocationWeather,
    TResult Function(String locationName)? addLocationByName,
    TResult Function()? addLocationByCurrentPosition,
    required TResult orElse(),
  }) {
    if (addLocationByCurrentPosition != null) {
      return addLocationByCurrentPosition();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DateRangeChanged value) dateRangeChanged,
    required TResult Function(DeleteLocationWeather value)
        deleteLocationWeather,
    required TResult Function(AddLocationByName value) addLocationByName,
    required TResult Function(AddLocationByCurrentPosition value)
        addLocationByCurrentPosition,
  }) {
    return addLocationByCurrentPosition(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DateRangeChanged value)? dateRangeChanged,
    TResult Function(DeleteLocationWeather value)? deleteLocationWeather,
    TResult Function(AddLocationByName value)? addLocationByName,
    TResult Function(AddLocationByCurrentPosition value)?
        addLocationByCurrentPosition,
  }) {
    return addLocationByCurrentPosition?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DateRangeChanged value)? dateRangeChanged,
    TResult Function(DeleteLocationWeather value)? deleteLocationWeather,
    TResult Function(AddLocationByName value)? addLocationByName,
    TResult Function(AddLocationByCurrentPosition value)?
        addLocationByCurrentPosition,
    required TResult orElse(),
  }) {
    if (addLocationByCurrentPosition != null) {
      return addLocationByCurrentPosition(this);
    }
    return orElse();
  }
}

abstract class AddLocationByCurrentPosition implements WeatherEvent {
  const factory AddLocationByCurrentPosition() = _$AddLocationByCurrentPosition;
}
