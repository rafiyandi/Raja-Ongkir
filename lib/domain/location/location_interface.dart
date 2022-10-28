import 'package:dartz/dartz.dart';
import 'package:learn_bloc/domain/location/location_failure.dart';
import 'package:learn_bloc/domain/location/location_response.dart';
import 'package:learn_bloc/domain/location/province_data.dart';

abstract class LocationInterface {
  Future<Either<LocationFailure, ProvinceResponse>>
      getAllLocationFromRajaOngkir();

  Future<Either<LocationFailure, CityResponse>> getCityByProvinceId(
      {required String provinceId});

  Future<Either<LocationFailure, CostsResponse>> getCost({
    required LocationResultData fromData,
    required LocationResultData toData,
    required int weight,
    required String courier,
  });
}
