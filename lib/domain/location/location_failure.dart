import 'package:freezed_annotation/freezed_annotation.dart';
part 'location_failure.freezed.dart';

@freezed
abstract class LocationFailure with _$LocationFailure {
  factory LocationFailure.notFound(String msg) = _NotFound;
  factory LocationFailure.badRequest(String badRequest) = _BadRequest;
  factory LocationFailure.serverError() = _ServerError;
}
