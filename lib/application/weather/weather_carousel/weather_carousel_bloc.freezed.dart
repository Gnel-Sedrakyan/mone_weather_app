// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weather_carousel_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WeatherCarouselState {
  int get selectedLocationIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherCarouselStateCopyWith<WeatherCarouselState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherCarouselStateCopyWith<$Res> {
  factory $WeatherCarouselStateCopyWith(WeatherCarouselState value,
          $Res Function(WeatherCarouselState) then) =
      _$WeatherCarouselStateCopyWithImpl<$Res>;
  $Res call({int selectedLocationIndex});
}

/// @nodoc
class _$WeatherCarouselStateCopyWithImpl<$Res>
    implements $WeatherCarouselStateCopyWith<$Res> {
  _$WeatherCarouselStateCopyWithImpl(this._value, this._then);

  final WeatherCarouselState _value;
  // ignore: unused_field
  final $Res Function(WeatherCarouselState) _then;

  @override
  $Res call({
    Object? selectedLocationIndex = freezed,
  }) {
    return _then(_value.copyWith(
      selectedLocationIndex: selectedLocationIndex == freezed
          ? _value.selectedLocationIndex
          : selectedLocationIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_WeatherCarouselStateCopyWith<$Res>
    implements $WeatherCarouselStateCopyWith<$Res> {
  factory _$$_WeatherCarouselStateCopyWith(_$_WeatherCarouselState value,
          $Res Function(_$_WeatherCarouselState) then) =
      __$$_WeatherCarouselStateCopyWithImpl<$Res>;
  @override
  $Res call({int selectedLocationIndex});
}

/// @nodoc
class __$$_WeatherCarouselStateCopyWithImpl<$Res>
    extends _$WeatherCarouselStateCopyWithImpl<$Res>
    implements _$$_WeatherCarouselStateCopyWith<$Res> {
  __$$_WeatherCarouselStateCopyWithImpl(_$_WeatherCarouselState _value,
      $Res Function(_$_WeatherCarouselState) _then)
      : super(_value, (v) => _then(v as _$_WeatherCarouselState));

  @override
  _$_WeatherCarouselState get _value => super._value as _$_WeatherCarouselState;

  @override
  $Res call({
    Object? selectedLocationIndex = freezed,
  }) {
    return _then(_$_WeatherCarouselState(
      selectedLocationIndex: selectedLocationIndex == freezed
          ? _value.selectedLocationIndex
          : selectedLocationIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_WeatherCarouselState extends _WeatherCarouselState {
  const _$_WeatherCarouselState({required this.selectedLocationIndex})
      : super._();

  @override
  final int selectedLocationIndex;

  @override
  String toString() {
    return 'WeatherCarouselState(selectedLocationIndex: $selectedLocationIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherCarouselState &&
            const DeepCollectionEquality()
                .equals(other.selectedLocationIndex, selectedLocationIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(selectedLocationIndex));

  @JsonKey(ignore: true)
  @override
  _$$_WeatherCarouselStateCopyWith<_$_WeatherCarouselState> get copyWith =>
      __$$_WeatherCarouselStateCopyWithImpl<_$_WeatherCarouselState>(
          this, _$identity);
}

abstract class _WeatherCarouselState extends WeatherCarouselState {
  const factory _WeatherCarouselState(
      {required final int selectedLocationIndex}) = _$_WeatherCarouselState;
  const _WeatherCarouselState._() : super._();

  @override
  int get selectedLocationIndex;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherCarouselStateCopyWith<_$_WeatherCarouselState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WeatherCarouselEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int newLocationIndex) selectedLocationChanged,
    required TResult Function(double pageOffset) pageOffsetChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int newLocationIndex)? selectedLocationChanged,
    TResult Function(double pageOffset)? pageOffsetChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int newLocationIndex)? selectedLocationChanged,
    TResult Function(double pageOffset)? pageOffsetChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectedLocationChanged value)
        selectedLocationChanged,
    required TResult Function(PageOffsetChanged value) pageOffsetChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SelectedLocationChanged value)? selectedLocationChanged,
    TResult Function(PageOffsetChanged value)? pageOffsetChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectedLocationChanged value)? selectedLocationChanged,
    TResult Function(PageOffsetChanged value)? pageOffsetChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherCarouselEventCopyWith<$Res> {
  factory $WeatherCarouselEventCopyWith(WeatherCarouselEvent value,
          $Res Function(WeatherCarouselEvent) then) =
      _$WeatherCarouselEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$WeatherCarouselEventCopyWithImpl<$Res>
    implements $WeatherCarouselEventCopyWith<$Res> {
  _$WeatherCarouselEventCopyWithImpl(this._value, this._then);

  final WeatherCarouselEvent _value;
  // ignore: unused_field
  final $Res Function(WeatherCarouselEvent) _then;
}

/// @nodoc
abstract class _$$SelectedLocationChangedCopyWith<$Res> {
  factory _$$SelectedLocationChangedCopyWith(_$SelectedLocationChanged value,
          $Res Function(_$SelectedLocationChanged) then) =
      __$$SelectedLocationChangedCopyWithImpl<$Res>;
  $Res call({int newLocationIndex});
}

/// @nodoc
class __$$SelectedLocationChangedCopyWithImpl<$Res>
    extends _$WeatherCarouselEventCopyWithImpl<$Res>
    implements _$$SelectedLocationChangedCopyWith<$Res> {
  __$$SelectedLocationChangedCopyWithImpl(_$SelectedLocationChanged _value,
      $Res Function(_$SelectedLocationChanged) _then)
      : super(_value, (v) => _then(v as _$SelectedLocationChanged));

  @override
  _$SelectedLocationChanged get _value =>
      super._value as _$SelectedLocationChanged;

  @override
  $Res call({
    Object? newLocationIndex = freezed,
  }) {
    return _then(_$SelectedLocationChanged(
      newLocationIndex: newLocationIndex == freezed
          ? _value.newLocationIndex
          : newLocationIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SelectedLocationChanged implements SelectedLocationChanged {
  const _$SelectedLocationChanged({required this.newLocationIndex});

  @override
  final int newLocationIndex;

  @override
  String toString() {
    return 'WeatherCarouselEvent.selectedLocationChanged(newLocationIndex: $newLocationIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectedLocationChanged &&
            const DeepCollectionEquality()
                .equals(other.newLocationIndex, newLocationIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(newLocationIndex));

  @JsonKey(ignore: true)
  @override
  _$$SelectedLocationChangedCopyWith<_$SelectedLocationChanged> get copyWith =>
      __$$SelectedLocationChangedCopyWithImpl<_$SelectedLocationChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int newLocationIndex) selectedLocationChanged,
    required TResult Function(double pageOffset) pageOffsetChanged,
  }) {
    return selectedLocationChanged(newLocationIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int newLocationIndex)? selectedLocationChanged,
    TResult Function(double pageOffset)? pageOffsetChanged,
  }) {
    return selectedLocationChanged?.call(newLocationIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int newLocationIndex)? selectedLocationChanged,
    TResult Function(double pageOffset)? pageOffsetChanged,
    required TResult orElse(),
  }) {
    if (selectedLocationChanged != null) {
      return selectedLocationChanged(newLocationIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectedLocationChanged value)
        selectedLocationChanged,
    required TResult Function(PageOffsetChanged value) pageOffsetChanged,
  }) {
    return selectedLocationChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SelectedLocationChanged value)? selectedLocationChanged,
    TResult Function(PageOffsetChanged value)? pageOffsetChanged,
  }) {
    return selectedLocationChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectedLocationChanged value)? selectedLocationChanged,
    TResult Function(PageOffsetChanged value)? pageOffsetChanged,
    required TResult orElse(),
  }) {
    if (selectedLocationChanged != null) {
      return selectedLocationChanged(this);
    }
    return orElse();
  }
}

abstract class SelectedLocationChanged implements WeatherCarouselEvent {
  const factory SelectedLocationChanged({required final int newLocationIndex}) =
      _$SelectedLocationChanged;

  int get newLocationIndex;
  @JsonKey(ignore: true)
  _$$SelectedLocationChangedCopyWith<_$SelectedLocationChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PageOffsetChangedCopyWith<$Res> {
  factory _$$PageOffsetChangedCopyWith(
          _$PageOffsetChanged value, $Res Function(_$PageOffsetChanged) then) =
      __$$PageOffsetChangedCopyWithImpl<$Res>;
  $Res call({double pageOffset});
}

/// @nodoc
class __$$PageOffsetChangedCopyWithImpl<$Res>
    extends _$WeatherCarouselEventCopyWithImpl<$Res>
    implements _$$PageOffsetChangedCopyWith<$Res> {
  __$$PageOffsetChangedCopyWithImpl(
      _$PageOffsetChanged _value, $Res Function(_$PageOffsetChanged) _then)
      : super(_value, (v) => _then(v as _$PageOffsetChanged));

  @override
  _$PageOffsetChanged get _value => super._value as _$PageOffsetChanged;

  @override
  $Res call({
    Object? pageOffset = freezed,
  }) {
    return _then(_$PageOffsetChanged(
      pageOffset: pageOffset == freezed
          ? _value.pageOffset
          : pageOffset // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$PageOffsetChanged implements PageOffsetChanged {
  const _$PageOffsetChanged({required this.pageOffset});

  @override
  final double pageOffset;

  @override
  String toString() {
    return 'WeatherCarouselEvent.pageOffsetChanged(pageOffset: $pageOffset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PageOffsetChanged &&
            const DeepCollectionEquality()
                .equals(other.pageOffset, pageOffset));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(pageOffset));

  @JsonKey(ignore: true)
  @override
  _$$PageOffsetChangedCopyWith<_$PageOffsetChanged> get copyWith =>
      __$$PageOffsetChangedCopyWithImpl<_$PageOffsetChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int newLocationIndex) selectedLocationChanged,
    required TResult Function(double pageOffset) pageOffsetChanged,
  }) {
    return pageOffsetChanged(pageOffset);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int newLocationIndex)? selectedLocationChanged,
    TResult Function(double pageOffset)? pageOffsetChanged,
  }) {
    return pageOffsetChanged?.call(pageOffset);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int newLocationIndex)? selectedLocationChanged,
    TResult Function(double pageOffset)? pageOffsetChanged,
    required TResult orElse(),
  }) {
    if (pageOffsetChanged != null) {
      return pageOffsetChanged(pageOffset);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectedLocationChanged value)
        selectedLocationChanged,
    required TResult Function(PageOffsetChanged value) pageOffsetChanged,
  }) {
    return pageOffsetChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SelectedLocationChanged value)? selectedLocationChanged,
    TResult Function(PageOffsetChanged value)? pageOffsetChanged,
  }) {
    return pageOffsetChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectedLocationChanged value)? selectedLocationChanged,
    TResult Function(PageOffsetChanged value)? pageOffsetChanged,
    required TResult orElse(),
  }) {
    if (pageOffsetChanged != null) {
      return pageOffsetChanged(this);
    }
    return orElse();
  }
}

abstract class PageOffsetChanged implements WeatherCarouselEvent {
  const factory PageOffsetChanged({required final double pageOffset}) =
      _$PageOffsetChanged;

  double get pageOffset;
  @JsonKey(ignore: true)
  _$$PageOffsetChangedCopyWith<_$PageOffsetChanged> get copyWith =>
      throw _privateConstructorUsedError;
}
