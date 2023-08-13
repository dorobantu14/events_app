import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticketmaster/events_list/entity/sales_entity.dart';

part 'event_entity.freezed.dart';

part 'event_entity.g.dart';

@freezed
class EventEntity with _$EventEntity {
  const factory EventEntity({
    required String name,
    required List<dynamic> images,
    required SalesEntity sales,
  }) = _Event;

  factory EventEntity.fromJson(Map<String, dynamic> json) =>
      _$EventEntityFromJson(json);
}
