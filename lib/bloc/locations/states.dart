import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lessons2/models/location.dart';

part 'states.freezed.dart';

@freezed
class LocationsState with _$LocationsState {
  factory LocationsState.initial() = LocationsStateInitial;
  factory LocationsState.loading() = LocationsStateLoading;
  factory LocationsState.data({required List<Location> data}) = LocationsStateData;
  factory LocationsState.error(String error) = LocationsStateError;
}
