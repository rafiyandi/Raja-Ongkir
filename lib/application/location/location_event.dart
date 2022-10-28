part of 'location_bloc.dart';

@freezed
abstract class LocationEvent with _$LocationEvent {
  factory LocationEvent.getLocationCity({required String provinceId}) =
      GetLocationCity;
  factory LocationEvent.getLocationProvince() = GetLocationProvince;

  factory LocationEvent.getCosts({
    required LocationResultData fromData,
    required LocationResultData toData,
    required int weight,
    required String courier,
  }) = GetCosts;
}
