import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:learn_bloc/domain/location/province_data.dart';

part 'location_response.freezed.dart';
part 'location_response.g.dart';

@freezed
abstract class LocationResponse with _$LocationResponse {
  factory LocationResponse.provinceResponse(
    List<dynamic> query,
    LocationStatusData status,
    List<LocationResultData> results,
  ) = ProvinceResponse;

  factory LocationResponse.cityResponse(
    dynamic query,
    LocationStatusData status,
    List<LocationResultData> results,
  ) = CityResponse;

  factory LocationResponse.costsResponse(
    dynamic query,
    LocationStatusData status,
    List<CostsResults> results,
  ) = CostsResponse;

  factory LocationResponse.fromJson(Map<String, dynamic> json) =>
      _$LocationResponseFromJson(json);
}
