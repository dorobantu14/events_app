import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticketmaster/events_list/entity/public_entity.dart';

part 'sales_entity.freezed.dart';

part 'sales_entity.g.dart';

@freezed
class SalesEntity with _$SalesEntity {
  const factory SalesEntity({
    required PublicEntity public,
  }) = _Sales;

  factory SalesEntity.fromJson(Map<String, dynamic> json) =>
      _$SalesEntityFromJson(json);
}
