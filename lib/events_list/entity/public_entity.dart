import 'package:freezed_annotation/freezed_annotation.dart';

part 'public_entity.freezed.dart';

part 'public_entity.g.dart';

@freezed
class PublicEntity with _$PublicEntity {
  const factory PublicEntity({
    required String startDateTime,
    required String endDateTime,
  }) = _Public;

  factory PublicEntity.fromJson(Map<String, dynamic> json) =>
      _$PublicEntityFromJson(json);
}
