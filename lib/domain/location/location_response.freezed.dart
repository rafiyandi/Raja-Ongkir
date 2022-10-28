// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'location_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LocationResponse _$LocationResponseFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'provinceResponse':
      return ProvinceResponse.fromJson(json);
    case 'cityResponse':
      return CityResponse.fromJson(json);
    case 'costsResponse':
      return CostsResponse.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'LocationResponse',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
class _$LocationResponseTearOff {
  const _$LocationResponseTearOff();

  ProvinceResponse provinceResponse(List<dynamic> query,
      LocationStatusData status, List<LocationResultData> results) {
    return ProvinceResponse(
      query,
      status,
      results,
    );
  }

  CityResponse cityResponse(dynamic query, LocationStatusData status,
      List<LocationResultData> results) {
    return CityResponse(
      query,
      status,
      results,
    );
  }

  CostsResponse costsResponse(
      dynamic query, LocationStatusData status, List<CostsResults> results) {
    return CostsResponse(
      query,
      status,
      results,
    );
  }

  LocationResponse fromJson(Map<String, Object?> json) {
    return LocationResponse.fromJson(json);
  }
}

/// @nodoc
const $LocationResponse = _$LocationResponseTearOff();

/// @nodoc
mixin _$LocationResponse {
  LocationStatusData get status => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<dynamic> query, LocationStatusData status,
            List<LocationResultData> results)
        provinceResponse,
    required TResult Function(dynamic query, LocationStatusData status,
            List<LocationResultData> results)
        cityResponse,
    required TResult Function(dynamic query, LocationStatusData status,
            List<CostsResults> results)
        costsResponse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<dynamic> query, LocationStatusData status,
            List<LocationResultData> results)?
        provinceResponse,
    TResult Function(dynamic query, LocationStatusData status,
            List<LocationResultData> results)?
        cityResponse,
    TResult Function(dynamic query, LocationStatusData status,
            List<CostsResults> results)?
        costsResponse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<dynamic> query, LocationStatusData status,
            List<LocationResultData> results)?
        provinceResponse,
    TResult Function(dynamic query, LocationStatusData status,
            List<LocationResultData> results)?
        cityResponse,
    TResult Function(dynamic query, LocationStatusData status,
            List<CostsResults> results)?
        costsResponse,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProvinceResponse value) provinceResponse,
    required TResult Function(CityResponse value) cityResponse,
    required TResult Function(CostsResponse value) costsResponse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProvinceResponse value)? provinceResponse,
    TResult Function(CityResponse value)? cityResponse,
    TResult Function(CostsResponse value)? costsResponse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProvinceResponse value)? provinceResponse,
    TResult Function(CityResponse value)? cityResponse,
    TResult Function(CostsResponse value)? costsResponse,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationResponseCopyWith<LocationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationResponseCopyWith<$Res> {
  factory $LocationResponseCopyWith(
          LocationResponse value, $Res Function(LocationResponse) then) =
      _$LocationResponseCopyWithImpl<$Res>;
  $Res call({LocationStatusData status});
}

/// @nodoc
class _$LocationResponseCopyWithImpl<$Res>
    implements $LocationResponseCopyWith<$Res> {
  _$LocationResponseCopyWithImpl(this._value, this._then);

  final LocationResponse _value;
  // ignore: unused_field
  final $Res Function(LocationResponse) _then;

  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LocationStatusData,
    ));
  }
}

/// @nodoc
abstract class $ProvinceResponseCopyWith<$Res>
    implements $LocationResponseCopyWith<$Res> {
  factory $ProvinceResponseCopyWith(
          ProvinceResponse value, $Res Function(ProvinceResponse) then) =
      _$ProvinceResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<dynamic> query,
      LocationStatusData status,
      List<LocationResultData> results});
}

/// @nodoc
class _$ProvinceResponseCopyWithImpl<$Res>
    extends _$LocationResponseCopyWithImpl<$Res>
    implements $ProvinceResponseCopyWith<$Res> {
  _$ProvinceResponseCopyWithImpl(
      ProvinceResponse _value, $Res Function(ProvinceResponse) _then)
      : super(_value, (v) => _then(v as ProvinceResponse));

  @override
  ProvinceResponse get _value => super._value as ProvinceResponse;

  @override
  $Res call({
    Object? query = freezed,
    Object? status = freezed,
    Object? results = freezed,
  }) {
    return _then(ProvinceResponse(
      query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LocationStatusData,
      results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<LocationResultData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProvinceResponse implements ProvinceResponse {
  _$ProvinceResponse(this.query, this.status, this.results, {String? $type})
      : $type = $type ?? 'provinceResponse';

  factory _$ProvinceResponse.fromJson(Map<String, dynamic> json) =>
      _$$ProvinceResponseFromJson(json);

  @override
  final List<dynamic> query;
  @override
  final LocationStatusData status;
  @override
  final List<LocationResultData> results;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'LocationResponse.provinceResponse(query: $query, status: $status, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProvinceResponse &&
            const DeepCollectionEquality().equals(other.query, query) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.results, results));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(query),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(results));

  @JsonKey(ignore: true)
  @override
  $ProvinceResponseCopyWith<ProvinceResponse> get copyWith =>
      _$ProvinceResponseCopyWithImpl<ProvinceResponse>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<dynamic> query, LocationStatusData status,
            List<LocationResultData> results)
        provinceResponse,
    required TResult Function(dynamic query, LocationStatusData status,
            List<LocationResultData> results)
        cityResponse,
    required TResult Function(dynamic query, LocationStatusData status,
            List<CostsResults> results)
        costsResponse,
  }) {
    return provinceResponse(query, status, results);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<dynamic> query, LocationStatusData status,
            List<LocationResultData> results)?
        provinceResponse,
    TResult Function(dynamic query, LocationStatusData status,
            List<LocationResultData> results)?
        cityResponse,
    TResult Function(dynamic query, LocationStatusData status,
            List<CostsResults> results)?
        costsResponse,
  }) {
    return provinceResponse?.call(query, status, results);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<dynamic> query, LocationStatusData status,
            List<LocationResultData> results)?
        provinceResponse,
    TResult Function(dynamic query, LocationStatusData status,
            List<LocationResultData> results)?
        cityResponse,
    TResult Function(dynamic query, LocationStatusData status,
            List<CostsResults> results)?
        costsResponse,
    required TResult orElse(),
  }) {
    if (provinceResponse != null) {
      return provinceResponse(query, status, results);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProvinceResponse value) provinceResponse,
    required TResult Function(CityResponse value) cityResponse,
    required TResult Function(CostsResponse value) costsResponse,
  }) {
    return provinceResponse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProvinceResponse value)? provinceResponse,
    TResult Function(CityResponse value)? cityResponse,
    TResult Function(CostsResponse value)? costsResponse,
  }) {
    return provinceResponse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProvinceResponse value)? provinceResponse,
    TResult Function(CityResponse value)? cityResponse,
    TResult Function(CostsResponse value)? costsResponse,
    required TResult orElse(),
  }) {
    if (provinceResponse != null) {
      return provinceResponse(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ProvinceResponseToJson(this);
  }
}

abstract class ProvinceResponse implements LocationResponse {
  factory ProvinceResponse(List<dynamic> query, LocationStatusData status,
      List<LocationResultData> results) = _$ProvinceResponse;

  factory ProvinceResponse.fromJson(Map<String, dynamic> json) =
      _$ProvinceResponse.fromJson;

  List<dynamic> get query;
  @override
  LocationStatusData get status;
  List<LocationResultData> get results;
  @override
  @JsonKey(ignore: true)
  $ProvinceResponseCopyWith<ProvinceResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityResponseCopyWith<$Res>
    implements $LocationResponseCopyWith<$Res> {
  factory $CityResponseCopyWith(
          CityResponse value, $Res Function(CityResponse) then) =
      _$CityResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {dynamic query,
      LocationStatusData status,
      List<LocationResultData> results});
}

/// @nodoc
class _$CityResponseCopyWithImpl<$Res>
    extends _$LocationResponseCopyWithImpl<$Res>
    implements $CityResponseCopyWith<$Res> {
  _$CityResponseCopyWithImpl(
      CityResponse _value, $Res Function(CityResponse) _then)
      : super(_value, (v) => _then(v as CityResponse));

  @override
  CityResponse get _value => super._value as CityResponse;

  @override
  $Res call({
    Object? query = freezed,
    Object? status = freezed,
    Object? results = freezed,
  }) {
    return _then(CityResponse(
      query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LocationStatusData,
      results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<LocationResultData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CityResponse implements CityResponse {
  _$CityResponse(this.query, this.status, this.results, {String? $type})
      : $type = $type ?? 'cityResponse';

  factory _$CityResponse.fromJson(Map<String, dynamic> json) =>
      _$$CityResponseFromJson(json);

  @override
  final dynamic query;
  @override
  final LocationStatusData status;
  @override
  final List<LocationResultData> results;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'LocationResponse.cityResponse(query: $query, status: $status, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CityResponse &&
            const DeepCollectionEquality().equals(other.query, query) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.results, results));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(query),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(results));

  @JsonKey(ignore: true)
  @override
  $CityResponseCopyWith<CityResponse> get copyWith =>
      _$CityResponseCopyWithImpl<CityResponse>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<dynamic> query, LocationStatusData status,
            List<LocationResultData> results)
        provinceResponse,
    required TResult Function(dynamic query, LocationStatusData status,
            List<LocationResultData> results)
        cityResponse,
    required TResult Function(dynamic query, LocationStatusData status,
            List<CostsResults> results)
        costsResponse,
  }) {
    return cityResponse(query, status, results);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<dynamic> query, LocationStatusData status,
            List<LocationResultData> results)?
        provinceResponse,
    TResult Function(dynamic query, LocationStatusData status,
            List<LocationResultData> results)?
        cityResponse,
    TResult Function(dynamic query, LocationStatusData status,
            List<CostsResults> results)?
        costsResponse,
  }) {
    return cityResponse?.call(query, status, results);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<dynamic> query, LocationStatusData status,
            List<LocationResultData> results)?
        provinceResponse,
    TResult Function(dynamic query, LocationStatusData status,
            List<LocationResultData> results)?
        cityResponse,
    TResult Function(dynamic query, LocationStatusData status,
            List<CostsResults> results)?
        costsResponse,
    required TResult orElse(),
  }) {
    if (cityResponse != null) {
      return cityResponse(query, status, results);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProvinceResponse value) provinceResponse,
    required TResult Function(CityResponse value) cityResponse,
    required TResult Function(CostsResponse value) costsResponse,
  }) {
    return cityResponse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProvinceResponse value)? provinceResponse,
    TResult Function(CityResponse value)? cityResponse,
    TResult Function(CostsResponse value)? costsResponse,
  }) {
    return cityResponse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProvinceResponse value)? provinceResponse,
    TResult Function(CityResponse value)? cityResponse,
    TResult Function(CostsResponse value)? costsResponse,
    required TResult orElse(),
  }) {
    if (cityResponse != null) {
      return cityResponse(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CityResponseToJson(this);
  }
}

abstract class CityResponse implements LocationResponse {
  factory CityResponse(dynamic query, LocationStatusData status,
      List<LocationResultData> results) = _$CityResponse;

  factory CityResponse.fromJson(Map<String, dynamic> json) =
      _$CityResponse.fromJson;

  dynamic get query;
  @override
  LocationStatusData get status;
  List<LocationResultData> get results;
  @override
  @JsonKey(ignore: true)
  $CityResponseCopyWith<CityResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CostsResponseCopyWith<$Res>
    implements $LocationResponseCopyWith<$Res> {
  factory $CostsResponseCopyWith(
          CostsResponse value, $Res Function(CostsResponse) then) =
      _$CostsResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {dynamic query, LocationStatusData status, List<CostsResults> results});
}

/// @nodoc
class _$CostsResponseCopyWithImpl<$Res>
    extends _$LocationResponseCopyWithImpl<$Res>
    implements $CostsResponseCopyWith<$Res> {
  _$CostsResponseCopyWithImpl(
      CostsResponse _value, $Res Function(CostsResponse) _then)
      : super(_value, (v) => _then(v as CostsResponse));

  @override
  CostsResponse get _value => super._value as CostsResponse;

  @override
  $Res call({
    Object? query = freezed,
    Object? status = freezed,
    Object? results = freezed,
  }) {
    return _then(CostsResponse(
      query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LocationStatusData,
      results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<CostsResults>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CostsResponse implements CostsResponse {
  _$CostsResponse(this.query, this.status, this.results, {String? $type})
      : $type = $type ?? 'costsResponse';

  factory _$CostsResponse.fromJson(Map<String, dynamic> json) =>
      _$$CostsResponseFromJson(json);

  @override
  final dynamic query;
  @override
  final LocationStatusData status;
  @override
  final List<CostsResults> results;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'LocationResponse.costsResponse(query: $query, status: $status, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CostsResponse &&
            const DeepCollectionEquality().equals(other.query, query) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.results, results));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(query),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(results));

  @JsonKey(ignore: true)
  @override
  $CostsResponseCopyWith<CostsResponse> get copyWith =>
      _$CostsResponseCopyWithImpl<CostsResponse>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<dynamic> query, LocationStatusData status,
            List<LocationResultData> results)
        provinceResponse,
    required TResult Function(dynamic query, LocationStatusData status,
            List<LocationResultData> results)
        cityResponse,
    required TResult Function(dynamic query, LocationStatusData status,
            List<CostsResults> results)
        costsResponse,
  }) {
    return costsResponse(query, status, results);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<dynamic> query, LocationStatusData status,
            List<LocationResultData> results)?
        provinceResponse,
    TResult Function(dynamic query, LocationStatusData status,
            List<LocationResultData> results)?
        cityResponse,
    TResult Function(dynamic query, LocationStatusData status,
            List<CostsResults> results)?
        costsResponse,
  }) {
    return costsResponse?.call(query, status, results);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<dynamic> query, LocationStatusData status,
            List<LocationResultData> results)?
        provinceResponse,
    TResult Function(dynamic query, LocationStatusData status,
            List<LocationResultData> results)?
        cityResponse,
    TResult Function(dynamic query, LocationStatusData status,
            List<CostsResults> results)?
        costsResponse,
    required TResult orElse(),
  }) {
    if (costsResponse != null) {
      return costsResponse(query, status, results);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProvinceResponse value) provinceResponse,
    required TResult Function(CityResponse value) cityResponse,
    required TResult Function(CostsResponse value) costsResponse,
  }) {
    return costsResponse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProvinceResponse value)? provinceResponse,
    TResult Function(CityResponse value)? cityResponse,
    TResult Function(CostsResponse value)? costsResponse,
  }) {
    return costsResponse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProvinceResponse value)? provinceResponse,
    TResult Function(CityResponse value)? cityResponse,
    TResult Function(CostsResponse value)? costsResponse,
    required TResult orElse(),
  }) {
    if (costsResponse != null) {
      return costsResponse(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CostsResponseToJson(this);
  }
}

abstract class CostsResponse implements LocationResponse {
  factory CostsResponse(dynamic query, LocationStatusData status,
      List<CostsResults> results) = _$CostsResponse;

  factory CostsResponse.fromJson(Map<String, dynamic> json) =
      _$CostsResponse.fromJson;

  dynamic get query;
  @override
  LocationStatusData get status;
  List<CostsResults> get results;
  @override
  @JsonKey(ignore: true)
  $CostsResponseCopyWith<CostsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
