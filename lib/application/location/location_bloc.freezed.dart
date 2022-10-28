// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'location_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LocationEventTearOff {
  const _$LocationEventTearOff();

  GetLocationCity getLocationCity({required String provinceId}) {
    return GetLocationCity(
      provinceId: provinceId,
    );
  }

  GetLocationProvince getLocationProvince() {
    return GetLocationProvince();
  }

  GetCosts getCosts(
      {required LocationResultData fromData,
      required LocationResultData toData,
      required int weight,
      required String courier}) {
    return GetCosts(
      fromData: fromData,
      toData: toData,
      weight: weight,
      courier: courier,
    );
  }
}

/// @nodoc
const $LocationEvent = _$LocationEventTearOff();

/// @nodoc
mixin _$LocationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String provinceId) getLocationCity,
    required TResult Function() getLocationProvince,
    required TResult Function(LocationResultData fromData,
            LocationResultData toData, int weight, String courier)
        getCosts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String provinceId)? getLocationCity,
    TResult Function()? getLocationProvince,
    TResult Function(LocationResultData fromData, LocationResultData toData,
            int weight, String courier)?
        getCosts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String provinceId)? getLocationCity,
    TResult Function()? getLocationProvince,
    TResult Function(LocationResultData fromData, LocationResultData toData,
            int weight, String courier)?
        getCosts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetLocationCity value) getLocationCity,
    required TResult Function(GetLocationProvince value) getLocationProvince,
    required TResult Function(GetCosts value) getCosts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetLocationCity value)? getLocationCity,
    TResult Function(GetLocationProvince value)? getLocationProvince,
    TResult Function(GetCosts value)? getCosts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetLocationCity value)? getLocationCity,
    TResult Function(GetLocationProvince value)? getLocationProvince,
    TResult Function(GetCosts value)? getCosts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationEventCopyWith<$Res> {
  factory $LocationEventCopyWith(
          LocationEvent value, $Res Function(LocationEvent) then) =
      _$LocationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocationEventCopyWithImpl<$Res>
    implements $LocationEventCopyWith<$Res> {
  _$LocationEventCopyWithImpl(this._value, this._then);

  final LocationEvent _value;
  // ignore: unused_field
  final $Res Function(LocationEvent) _then;
}

/// @nodoc
abstract class $GetLocationCityCopyWith<$Res> {
  factory $GetLocationCityCopyWith(
          GetLocationCity value, $Res Function(GetLocationCity) then) =
      _$GetLocationCityCopyWithImpl<$Res>;
  $Res call({String provinceId});
}

/// @nodoc
class _$GetLocationCityCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res>
    implements $GetLocationCityCopyWith<$Res> {
  _$GetLocationCityCopyWithImpl(
      GetLocationCity _value, $Res Function(GetLocationCity) _then)
      : super(_value, (v) => _then(v as GetLocationCity));

  @override
  GetLocationCity get _value => super._value as GetLocationCity;

  @override
  $Res call({
    Object? provinceId = freezed,
  }) {
    return _then(GetLocationCity(
      provinceId: provinceId == freezed
          ? _value.provinceId
          : provinceId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetLocationCity implements GetLocationCity {
  _$GetLocationCity({required this.provinceId});

  @override
  final String provinceId;

  @override
  String toString() {
    return 'LocationEvent.getLocationCity(provinceId: $provinceId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetLocationCity &&
            const DeepCollectionEquality()
                .equals(other.provinceId, provinceId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(provinceId));

  @JsonKey(ignore: true)
  @override
  $GetLocationCityCopyWith<GetLocationCity> get copyWith =>
      _$GetLocationCityCopyWithImpl<GetLocationCity>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String provinceId) getLocationCity,
    required TResult Function() getLocationProvince,
    required TResult Function(LocationResultData fromData,
            LocationResultData toData, int weight, String courier)
        getCosts,
  }) {
    return getLocationCity(provinceId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String provinceId)? getLocationCity,
    TResult Function()? getLocationProvince,
    TResult Function(LocationResultData fromData, LocationResultData toData,
            int weight, String courier)?
        getCosts,
  }) {
    return getLocationCity?.call(provinceId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String provinceId)? getLocationCity,
    TResult Function()? getLocationProvince,
    TResult Function(LocationResultData fromData, LocationResultData toData,
            int weight, String courier)?
        getCosts,
    required TResult orElse(),
  }) {
    if (getLocationCity != null) {
      return getLocationCity(provinceId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetLocationCity value) getLocationCity,
    required TResult Function(GetLocationProvince value) getLocationProvince,
    required TResult Function(GetCosts value) getCosts,
  }) {
    return getLocationCity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetLocationCity value)? getLocationCity,
    TResult Function(GetLocationProvince value)? getLocationProvince,
    TResult Function(GetCosts value)? getCosts,
  }) {
    return getLocationCity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetLocationCity value)? getLocationCity,
    TResult Function(GetLocationProvince value)? getLocationProvince,
    TResult Function(GetCosts value)? getCosts,
    required TResult orElse(),
  }) {
    if (getLocationCity != null) {
      return getLocationCity(this);
    }
    return orElse();
  }
}

abstract class GetLocationCity implements LocationEvent {
  factory GetLocationCity({required String provinceId}) = _$GetLocationCity;

  String get provinceId;
  @JsonKey(ignore: true)
  $GetLocationCityCopyWith<GetLocationCity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetLocationProvinceCopyWith<$Res> {
  factory $GetLocationProvinceCopyWith(
          GetLocationProvince value, $Res Function(GetLocationProvince) then) =
      _$GetLocationProvinceCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetLocationProvinceCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res>
    implements $GetLocationProvinceCopyWith<$Res> {
  _$GetLocationProvinceCopyWithImpl(
      GetLocationProvince _value, $Res Function(GetLocationProvince) _then)
      : super(_value, (v) => _then(v as GetLocationProvince));

  @override
  GetLocationProvince get _value => super._value as GetLocationProvince;
}

/// @nodoc

class _$GetLocationProvince implements GetLocationProvince {
  _$GetLocationProvince();

  @override
  String toString() {
    return 'LocationEvent.getLocationProvince()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetLocationProvince);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String provinceId) getLocationCity,
    required TResult Function() getLocationProvince,
    required TResult Function(LocationResultData fromData,
            LocationResultData toData, int weight, String courier)
        getCosts,
  }) {
    return getLocationProvince();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String provinceId)? getLocationCity,
    TResult Function()? getLocationProvince,
    TResult Function(LocationResultData fromData, LocationResultData toData,
            int weight, String courier)?
        getCosts,
  }) {
    return getLocationProvince?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String provinceId)? getLocationCity,
    TResult Function()? getLocationProvince,
    TResult Function(LocationResultData fromData, LocationResultData toData,
            int weight, String courier)?
        getCosts,
    required TResult orElse(),
  }) {
    if (getLocationProvince != null) {
      return getLocationProvince();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetLocationCity value) getLocationCity,
    required TResult Function(GetLocationProvince value) getLocationProvince,
    required TResult Function(GetCosts value) getCosts,
  }) {
    return getLocationProvince(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetLocationCity value)? getLocationCity,
    TResult Function(GetLocationProvince value)? getLocationProvince,
    TResult Function(GetCosts value)? getCosts,
  }) {
    return getLocationProvince?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetLocationCity value)? getLocationCity,
    TResult Function(GetLocationProvince value)? getLocationProvince,
    TResult Function(GetCosts value)? getCosts,
    required TResult orElse(),
  }) {
    if (getLocationProvince != null) {
      return getLocationProvince(this);
    }
    return orElse();
  }
}

abstract class GetLocationProvince implements LocationEvent {
  factory GetLocationProvince() = _$GetLocationProvince;
}

/// @nodoc
abstract class $GetCostsCopyWith<$Res> {
  factory $GetCostsCopyWith(GetCosts value, $Res Function(GetCosts) then) =
      _$GetCostsCopyWithImpl<$Res>;
  $Res call(
      {LocationResultData fromData,
      LocationResultData toData,
      int weight,
      String courier});
}

/// @nodoc
class _$GetCostsCopyWithImpl<$Res> extends _$LocationEventCopyWithImpl<$Res>
    implements $GetCostsCopyWith<$Res> {
  _$GetCostsCopyWithImpl(GetCosts _value, $Res Function(GetCosts) _then)
      : super(_value, (v) => _then(v as GetCosts));

  @override
  GetCosts get _value => super._value as GetCosts;

  @override
  $Res call({
    Object? fromData = freezed,
    Object? toData = freezed,
    Object? weight = freezed,
    Object? courier = freezed,
  }) {
    return _then(GetCosts(
      fromData: fromData == freezed
          ? _value.fromData
          : fromData // ignore: cast_nullable_to_non_nullable
              as LocationResultData,
      toData: toData == freezed
          ? _value.toData
          : toData // ignore: cast_nullable_to_non_nullable
              as LocationResultData,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      courier: courier == freezed
          ? _value.courier
          : courier // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetCosts implements GetCosts {
  _$GetCosts(
      {required this.fromData,
      required this.toData,
      required this.weight,
      required this.courier});

  @override
  final LocationResultData fromData;
  @override
  final LocationResultData toData;
  @override
  final int weight;
  @override
  final String courier;

  @override
  String toString() {
    return 'LocationEvent.getCosts(fromData: $fromData, toData: $toData, weight: $weight, courier: $courier)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetCosts &&
            const DeepCollectionEquality().equals(other.fromData, fromData) &&
            const DeepCollectionEquality().equals(other.toData, toData) &&
            const DeepCollectionEquality().equals(other.weight, weight) &&
            const DeepCollectionEquality().equals(other.courier, courier));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(fromData),
      const DeepCollectionEquality().hash(toData),
      const DeepCollectionEquality().hash(weight),
      const DeepCollectionEquality().hash(courier));

  @JsonKey(ignore: true)
  @override
  $GetCostsCopyWith<GetCosts> get copyWith =>
      _$GetCostsCopyWithImpl<GetCosts>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String provinceId) getLocationCity,
    required TResult Function() getLocationProvince,
    required TResult Function(LocationResultData fromData,
            LocationResultData toData, int weight, String courier)
        getCosts,
  }) {
    return getCosts(fromData, toData, weight, courier);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String provinceId)? getLocationCity,
    TResult Function()? getLocationProvince,
    TResult Function(LocationResultData fromData, LocationResultData toData,
            int weight, String courier)?
        getCosts,
  }) {
    return getCosts?.call(fromData, toData, weight, courier);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String provinceId)? getLocationCity,
    TResult Function()? getLocationProvince,
    TResult Function(LocationResultData fromData, LocationResultData toData,
            int weight, String courier)?
        getCosts,
    required TResult orElse(),
  }) {
    if (getCosts != null) {
      return getCosts(fromData, toData, weight, courier);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetLocationCity value) getLocationCity,
    required TResult Function(GetLocationProvince value) getLocationProvince,
    required TResult Function(GetCosts value) getCosts,
  }) {
    return getCosts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetLocationCity value)? getLocationCity,
    TResult Function(GetLocationProvince value)? getLocationProvince,
    TResult Function(GetCosts value)? getCosts,
  }) {
    return getCosts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetLocationCity value)? getLocationCity,
    TResult Function(GetLocationProvince value)? getLocationProvince,
    TResult Function(GetCosts value)? getCosts,
    required TResult orElse(),
  }) {
    if (getCosts != null) {
      return getCosts(this);
    }
    return orElse();
  }
}

abstract class GetCosts implements LocationEvent {
  factory GetCosts(
      {required LocationResultData fromData,
      required LocationResultData toData,
      required int weight,
      required String courier}) = _$GetCosts;

  LocationResultData get fromData;
  LocationResultData get toData;
  int get weight;
  String get courier;
  @JsonKey(ignore: true)
  $GetCostsCopyWith<GetCosts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$LocationStateTearOff {
  const _$LocationStateTearOff();

  _Initial initial() {
    return _Initial();
  }

  _ProvinceDataOptions provinceDataOptions(
      {required bool onLoading,
      required Option<Either<LocationFailure, ProvinceResponse>>
          dataProvince}) {
    return _ProvinceDataOptions(
      onLoading: onLoading,
      dataProvince: dataProvince,
    );
  }

  _CityDataOptions cityDataOptions(
      {required bool onLoading,
      required Option<Either<LocationFailure, CityResponse>> cityProvince}) {
    return _CityDataOptions(
      onLoading: onLoading,
      cityProvince: cityProvince,
    );
  }

  _GetCostsOptions getCostsOptions(
      {required bool onLoading,
      required Option<Either<LocationFailure, CostsResponse>> costData}) {
    return _GetCostsOptions(
      onLoading: onLoading,
      costData: costData,
    );
  }
}

/// @nodoc
const $LocationState = _$LocationStateTearOff();

/// @nodoc
mixin _$LocationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool onLoading,
            Option<Either<LocationFailure, ProvinceResponse>> dataProvince)
        provinceDataOptions,
    required TResult Function(bool onLoading,
            Option<Either<LocationFailure, CityResponse>> cityProvince)
        cityDataOptions,
    required TResult Function(bool onLoading,
            Option<Either<LocationFailure, CostsResponse>> costData)
        getCostsOptions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool onLoading,
            Option<Either<LocationFailure, ProvinceResponse>> dataProvince)?
        provinceDataOptions,
    TResult Function(bool onLoading,
            Option<Either<LocationFailure, CityResponse>> cityProvince)?
        cityDataOptions,
    TResult Function(bool onLoading,
            Option<Either<LocationFailure, CostsResponse>> costData)?
        getCostsOptions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool onLoading,
            Option<Either<LocationFailure, ProvinceResponse>> dataProvince)?
        provinceDataOptions,
    TResult Function(bool onLoading,
            Option<Either<LocationFailure, CityResponse>> cityProvince)?
        cityDataOptions,
    TResult Function(bool onLoading,
            Option<Either<LocationFailure, CostsResponse>> costData)?
        getCostsOptions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ProvinceDataOptions value) provinceDataOptions,
    required TResult Function(_CityDataOptions value) cityDataOptions,
    required TResult Function(_GetCostsOptions value) getCostsOptions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ProvinceDataOptions value)? provinceDataOptions,
    TResult Function(_CityDataOptions value)? cityDataOptions,
    TResult Function(_GetCostsOptions value)? getCostsOptions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ProvinceDataOptions value)? provinceDataOptions,
    TResult Function(_CityDataOptions value)? cityDataOptions,
    TResult Function(_GetCostsOptions value)? getCostsOptions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationStateCopyWith<$Res> {
  factory $LocationStateCopyWith(
          LocationState value, $Res Function(LocationState) then) =
      _$LocationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocationStateCopyWithImpl<$Res>
    implements $LocationStateCopyWith<$Res> {
  _$LocationStateCopyWithImpl(this._value, this._then);

  final LocationState _value;
  // ignore: unused_field
  final $Res Function(LocationState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$LocationStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  _$_Initial();

  @override
  String toString() {
    return 'LocationState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool onLoading,
            Option<Either<LocationFailure, ProvinceResponse>> dataProvince)
        provinceDataOptions,
    required TResult Function(bool onLoading,
            Option<Either<LocationFailure, CityResponse>> cityProvince)
        cityDataOptions,
    required TResult Function(bool onLoading,
            Option<Either<LocationFailure, CostsResponse>> costData)
        getCostsOptions,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool onLoading,
            Option<Either<LocationFailure, ProvinceResponse>> dataProvince)?
        provinceDataOptions,
    TResult Function(bool onLoading,
            Option<Either<LocationFailure, CityResponse>> cityProvince)?
        cityDataOptions,
    TResult Function(bool onLoading,
            Option<Either<LocationFailure, CostsResponse>> costData)?
        getCostsOptions,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool onLoading,
            Option<Either<LocationFailure, ProvinceResponse>> dataProvince)?
        provinceDataOptions,
    TResult Function(bool onLoading,
            Option<Either<LocationFailure, CityResponse>> cityProvince)?
        cityDataOptions,
    TResult Function(bool onLoading,
            Option<Either<LocationFailure, CostsResponse>> costData)?
        getCostsOptions,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ProvinceDataOptions value) provinceDataOptions,
    required TResult Function(_CityDataOptions value) cityDataOptions,
    required TResult Function(_GetCostsOptions value) getCostsOptions,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ProvinceDataOptions value)? provinceDataOptions,
    TResult Function(_CityDataOptions value)? cityDataOptions,
    TResult Function(_GetCostsOptions value)? getCostsOptions,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ProvinceDataOptions value)? provinceDataOptions,
    TResult Function(_CityDataOptions value)? cityDataOptions,
    TResult Function(_GetCostsOptions value)? getCostsOptions,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements LocationState {
  factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$ProvinceDataOptionsCopyWith<$Res> {
  factory _$ProvinceDataOptionsCopyWith(_ProvinceDataOptions value,
          $Res Function(_ProvinceDataOptions) then) =
      __$ProvinceDataOptionsCopyWithImpl<$Res>;
  $Res call(
      {bool onLoading,
      Option<Either<LocationFailure, ProvinceResponse>> dataProvince});
}

/// @nodoc
class __$ProvinceDataOptionsCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res>
    implements _$ProvinceDataOptionsCopyWith<$Res> {
  __$ProvinceDataOptionsCopyWithImpl(
      _ProvinceDataOptions _value, $Res Function(_ProvinceDataOptions) _then)
      : super(_value, (v) => _then(v as _ProvinceDataOptions));

  @override
  _ProvinceDataOptions get _value => super._value as _ProvinceDataOptions;

  @override
  $Res call({
    Object? onLoading = freezed,
    Object? dataProvince = freezed,
  }) {
    return _then(_ProvinceDataOptions(
      onLoading: onLoading == freezed
          ? _value.onLoading
          : onLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      dataProvince: dataProvince == freezed
          ? _value.dataProvince
          : dataProvince // ignore: cast_nullable_to_non_nullable
              as Option<Either<LocationFailure, ProvinceResponse>>,
    ));
  }
}

/// @nodoc

class _$_ProvinceDataOptions implements _ProvinceDataOptions {
  _$_ProvinceDataOptions({required this.onLoading, required this.dataProvince});

  @override
  final bool onLoading;
  @override //option digunakan agar kita bisa mengisi data none;
  final Option<Either<LocationFailure, ProvinceResponse>> dataProvince;

  @override
  String toString() {
    return 'LocationState.provinceDataOptions(onLoading: $onLoading, dataProvince: $dataProvince)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProvinceDataOptions &&
            const DeepCollectionEquality().equals(other.onLoading, onLoading) &&
            const DeepCollectionEquality()
                .equals(other.dataProvince, dataProvince));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(onLoading),
      const DeepCollectionEquality().hash(dataProvince));

  @JsonKey(ignore: true)
  @override
  _$ProvinceDataOptionsCopyWith<_ProvinceDataOptions> get copyWith =>
      __$ProvinceDataOptionsCopyWithImpl<_ProvinceDataOptions>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool onLoading,
            Option<Either<LocationFailure, ProvinceResponse>> dataProvince)
        provinceDataOptions,
    required TResult Function(bool onLoading,
            Option<Either<LocationFailure, CityResponse>> cityProvince)
        cityDataOptions,
    required TResult Function(bool onLoading,
            Option<Either<LocationFailure, CostsResponse>> costData)
        getCostsOptions,
  }) {
    return provinceDataOptions(onLoading, dataProvince);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool onLoading,
            Option<Either<LocationFailure, ProvinceResponse>> dataProvince)?
        provinceDataOptions,
    TResult Function(bool onLoading,
            Option<Either<LocationFailure, CityResponse>> cityProvince)?
        cityDataOptions,
    TResult Function(bool onLoading,
            Option<Either<LocationFailure, CostsResponse>> costData)?
        getCostsOptions,
  }) {
    return provinceDataOptions?.call(onLoading, dataProvince);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool onLoading,
            Option<Either<LocationFailure, ProvinceResponse>> dataProvince)?
        provinceDataOptions,
    TResult Function(bool onLoading,
            Option<Either<LocationFailure, CityResponse>> cityProvince)?
        cityDataOptions,
    TResult Function(bool onLoading,
            Option<Either<LocationFailure, CostsResponse>> costData)?
        getCostsOptions,
    required TResult orElse(),
  }) {
    if (provinceDataOptions != null) {
      return provinceDataOptions(onLoading, dataProvince);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ProvinceDataOptions value) provinceDataOptions,
    required TResult Function(_CityDataOptions value) cityDataOptions,
    required TResult Function(_GetCostsOptions value) getCostsOptions,
  }) {
    return provinceDataOptions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ProvinceDataOptions value)? provinceDataOptions,
    TResult Function(_CityDataOptions value)? cityDataOptions,
    TResult Function(_GetCostsOptions value)? getCostsOptions,
  }) {
    return provinceDataOptions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ProvinceDataOptions value)? provinceDataOptions,
    TResult Function(_CityDataOptions value)? cityDataOptions,
    TResult Function(_GetCostsOptions value)? getCostsOptions,
    required TResult orElse(),
  }) {
    if (provinceDataOptions != null) {
      return provinceDataOptions(this);
    }
    return orElse();
  }
}

abstract class _ProvinceDataOptions implements LocationState {
  factory _ProvinceDataOptions(
      {required bool onLoading,
      required Option<Either<LocationFailure, ProvinceResponse>>
          dataProvince}) = _$_ProvinceDataOptions;

  bool get onLoading; //option digunakan agar kita bisa mengisi data none;
  Option<Either<LocationFailure, ProvinceResponse>> get dataProvince;
  @JsonKey(ignore: true)
  _$ProvinceDataOptionsCopyWith<_ProvinceDataOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CityDataOptionsCopyWith<$Res> {
  factory _$CityDataOptionsCopyWith(
          _CityDataOptions value, $Res Function(_CityDataOptions) then) =
      __$CityDataOptionsCopyWithImpl<$Res>;
  $Res call(
      {bool onLoading,
      Option<Either<LocationFailure, CityResponse>> cityProvince});
}

/// @nodoc
class __$CityDataOptionsCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res>
    implements _$CityDataOptionsCopyWith<$Res> {
  __$CityDataOptionsCopyWithImpl(
      _CityDataOptions _value, $Res Function(_CityDataOptions) _then)
      : super(_value, (v) => _then(v as _CityDataOptions));

  @override
  _CityDataOptions get _value => super._value as _CityDataOptions;

  @override
  $Res call({
    Object? onLoading = freezed,
    Object? cityProvince = freezed,
  }) {
    return _then(_CityDataOptions(
      onLoading: onLoading == freezed
          ? _value.onLoading
          : onLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      cityProvince: cityProvince == freezed
          ? _value.cityProvince
          : cityProvince // ignore: cast_nullable_to_non_nullable
              as Option<Either<LocationFailure, CityResponse>>,
    ));
  }
}

/// @nodoc

class _$_CityDataOptions implements _CityDataOptions {
  _$_CityDataOptions({required this.onLoading, required this.cityProvince});

  @override
  final bool onLoading;
  @override //option digunakan agar kita bisa mengisi data none;
  final Option<Either<LocationFailure, CityResponse>> cityProvince;

  @override
  String toString() {
    return 'LocationState.cityDataOptions(onLoading: $onLoading, cityProvince: $cityProvince)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CityDataOptions &&
            const DeepCollectionEquality().equals(other.onLoading, onLoading) &&
            const DeepCollectionEquality()
                .equals(other.cityProvince, cityProvince));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(onLoading),
      const DeepCollectionEquality().hash(cityProvince));

  @JsonKey(ignore: true)
  @override
  _$CityDataOptionsCopyWith<_CityDataOptions> get copyWith =>
      __$CityDataOptionsCopyWithImpl<_CityDataOptions>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool onLoading,
            Option<Either<LocationFailure, ProvinceResponse>> dataProvince)
        provinceDataOptions,
    required TResult Function(bool onLoading,
            Option<Either<LocationFailure, CityResponse>> cityProvince)
        cityDataOptions,
    required TResult Function(bool onLoading,
            Option<Either<LocationFailure, CostsResponse>> costData)
        getCostsOptions,
  }) {
    return cityDataOptions(onLoading, cityProvince);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool onLoading,
            Option<Either<LocationFailure, ProvinceResponse>> dataProvince)?
        provinceDataOptions,
    TResult Function(bool onLoading,
            Option<Either<LocationFailure, CityResponse>> cityProvince)?
        cityDataOptions,
    TResult Function(bool onLoading,
            Option<Either<LocationFailure, CostsResponse>> costData)?
        getCostsOptions,
  }) {
    return cityDataOptions?.call(onLoading, cityProvince);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool onLoading,
            Option<Either<LocationFailure, ProvinceResponse>> dataProvince)?
        provinceDataOptions,
    TResult Function(bool onLoading,
            Option<Either<LocationFailure, CityResponse>> cityProvince)?
        cityDataOptions,
    TResult Function(bool onLoading,
            Option<Either<LocationFailure, CostsResponse>> costData)?
        getCostsOptions,
    required TResult orElse(),
  }) {
    if (cityDataOptions != null) {
      return cityDataOptions(onLoading, cityProvince);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ProvinceDataOptions value) provinceDataOptions,
    required TResult Function(_CityDataOptions value) cityDataOptions,
    required TResult Function(_GetCostsOptions value) getCostsOptions,
  }) {
    return cityDataOptions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ProvinceDataOptions value)? provinceDataOptions,
    TResult Function(_CityDataOptions value)? cityDataOptions,
    TResult Function(_GetCostsOptions value)? getCostsOptions,
  }) {
    return cityDataOptions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ProvinceDataOptions value)? provinceDataOptions,
    TResult Function(_CityDataOptions value)? cityDataOptions,
    TResult Function(_GetCostsOptions value)? getCostsOptions,
    required TResult orElse(),
  }) {
    if (cityDataOptions != null) {
      return cityDataOptions(this);
    }
    return orElse();
  }
}

abstract class _CityDataOptions implements LocationState {
  factory _CityDataOptions(
      {required bool onLoading,
      required Option<Either<LocationFailure, CityResponse>>
          cityProvince}) = _$_CityDataOptions;

  bool get onLoading; //option digunakan agar kita bisa mengisi data none;
  Option<Either<LocationFailure, CityResponse>> get cityProvince;
  @JsonKey(ignore: true)
  _$CityDataOptionsCopyWith<_CityDataOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetCostsOptionsCopyWith<$Res> {
  factory _$GetCostsOptionsCopyWith(
          _GetCostsOptions value, $Res Function(_GetCostsOptions) then) =
      __$GetCostsOptionsCopyWithImpl<$Res>;
  $Res call(
      {bool onLoading,
      Option<Either<LocationFailure, CostsResponse>> costData});
}

/// @nodoc
class __$GetCostsOptionsCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res>
    implements _$GetCostsOptionsCopyWith<$Res> {
  __$GetCostsOptionsCopyWithImpl(
      _GetCostsOptions _value, $Res Function(_GetCostsOptions) _then)
      : super(_value, (v) => _then(v as _GetCostsOptions));

  @override
  _GetCostsOptions get _value => super._value as _GetCostsOptions;

  @override
  $Res call({
    Object? onLoading = freezed,
    Object? costData = freezed,
  }) {
    return _then(_GetCostsOptions(
      onLoading: onLoading == freezed
          ? _value.onLoading
          : onLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      costData: costData == freezed
          ? _value.costData
          : costData // ignore: cast_nullable_to_non_nullable
              as Option<Either<LocationFailure, CostsResponse>>,
    ));
  }
}

/// @nodoc

class _$_GetCostsOptions implements _GetCostsOptions {
  _$_GetCostsOptions({required this.onLoading, required this.costData});

  @override
  final bool onLoading;
  @override
  final Option<Either<LocationFailure, CostsResponse>> costData;

  @override
  String toString() {
    return 'LocationState.getCostsOptions(onLoading: $onLoading, costData: $costData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetCostsOptions &&
            const DeepCollectionEquality().equals(other.onLoading, onLoading) &&
            const DeepCollectionEquality().equals(other.costData, costData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(onLoading),
      const DeepCollectionEquality().hash(costData));

  @JsonKey(ignore: true)
  @override
  _$GetCostsOptionsCopyWith<_GetCostsOptions> get copyWith =>
      __$GetCostsOptionsCopyWithImpl<_GetCostsOptions>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool onLoading,
            Option<Either<LocationFailure, ProvinceResponse>> dataProvince)
        provinceDataOptions,
    required TResult Function(bool onLoading,
            Option<Either<LocationFailure, CityResponse>> cityProvince)
        cityDataOptions,
    required TResult Function(bool onLoading,
            Option<Either<LocationFailure, CostsResponse>> costData)
        getCostsOptions,
  }) {
    return getCostsOptions(onLoading, costData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool onLoading,
            Option<Either<LocationFailure, ProvinceResponse>> dataProvince)?
        provinceDataOptions,
    TResult Function(bool onLoading,
            Option<Either<LocationFailure, CityResponse>> cityProvince)?
        cityDataOptions,
    TResult Function(bool onLoading,
            Option<Either<LocationFailure, CostsResponse>> costData)?
        getCostsOptions,
  }) {
    return getCostsOptions?.call(onLoading, costData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool onLoading,
            Option<Either<LocationFailure, ProvinceResponse>> dataProvince)?
        provinceDataOptions,
    TResult Function(bool onLoading,
            Option<Either<LocationFailure, CityResponse>> cityProvince)?
        cityDataOptions,
    TResult Function(bool onLoading,
            Option<Either<LocationFailure, CostsResponse>> costData)?
        getCostsOptions,
    required TResult orElse(),
  }) {
    if (getCostsOptions != null) {
      return getCostsOptions(onLoading, costData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ProvinceDataOptions value) provinceDataOptions,
    required TResult Function(_CityDataOptions value) cityDataOptions,
    required TResult Function(_GetCostsOptions value) getCostsOptions,
  }) {
    return getCostsOptions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ProvinceDataOptions value)? provinceDataOptions,
    TResult Function(_CityDataOptions value)? cityDataOptions,
    TResult Function(_GetCostsOptions value)? getCostsOptions,
  }) {
    return getCostsOptions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ProvinceDataOptions value)? provinceDataOptions,
    TResult Function(_CityDataOptions value)? cityDataOptions,
    TResult Function(_GetCostsOptions value)? getCostsOptions,
    required TResult orElse(),
  }) {
    if (getCostsOptions != null) {
      return getCostsOptions(this);
    }
    return orElse();
  }
}

abstract class _GetCostsOptions implements LocationState {
  factory _GetCostsOptions(
          {required bool onLoading,
          required Option<Either<LocationFailure, CostsResponse>> costData}) =
      _$_GetCostsOptions;

  bool get onLoading;
  Option<Either<LocationFailure, CostsResponse>> get costData;
  @JsonKey(ignore: true)
  _$GetCostsOptionsCopyWith<_GetCostsOptions> get copyWith =>
      throw _privateConstructorUsedError;
}
