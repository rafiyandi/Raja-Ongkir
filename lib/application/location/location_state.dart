part of 'location_bloc.dart';

@freezed
abstract class LocationState with _$LocationState {
  factory LocationState.initial() = _Initial;
  factory LocationState.provinceDataOptions({
    required bool onLoading,
    //option digunakan agar kita bisa mengisi data none;
    required Option<Either<LocationFailure, ProvinceResponse>> dataProvince,
  }) = _ProvinceDataOptions;

  factory LocationState.cityDataOptions({
    required bool onLoading,
    //option digunakan agar kita bisa mengisi data none;
    required Option<Either<LocationFailure, CityResponse>> cityProvince,
  }) = _CityDataOptions;

  factory LocationState.getCostsOptions(
          {required bool onLoading,
          required Option<Either<LocationFailure, CostsResponse>> costData}) =
      _GetCostsOptions;
}
