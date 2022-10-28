// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProvinceResponse _$$ProvinceResponseFromJson(Map<String, dynamic> json) =>
    _$ProvinceResponse(
      json['query'] as List<dynamic>,
      LocationStatusData.fromJson(json['status'] as Map<String, dynamic>),
      (json['results'] as List<dynamic>)
          .map((e) => LocationResultData.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ProvinceResponseToJson(_$ProvinceResponse instance) =>
    <String, dynamic>{
      'query': instance.query,
      'status': instance.status,
      'results': instance.results,
      'runtimeType': instance.$type,
    };

_$CityResponse _$$CityResponseFromJson(Map<String, dynamic> json) =>
    _$CityResponse(
      json['query'],
      LocationStatusData.fromJson(json['status'] as Map<String, dynamic>),
      (json['results'] as List<dynamic>)
          .map((e) => LocationResultData.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$CityResponseToJson(_$CityResponse instance) =>
    <String, dynamic>{
      'query': instance.query,
      'status': instance.status,
      'results': instance.results,
      'runtimeType': instance.$type,
    };

_$CostsResponse _$$CostsResponseFromJson(Map<String, dynamic> json) =>
    _$CostsResponse(
      json['query'],
      LocationStatusData.fromJson(json['status'] as Map<String, dynamic>),
      (json['results'] as List<dynamic>)
          .map((e) => CostsResults.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$CostsResponseToJson(_$CostsResponse instance) =>
    <String, dynamic>{
      'query': instance.query,
      'status': instance.status,
      'results': instance.results,
      'runtimeType': instance.$type,
    };
