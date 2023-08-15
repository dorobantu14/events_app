// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Event _$$_EventFromJson(Map<String, dynamic> json) => _$_Event(
      name: json['name'] as String,
      images: json['images'] as List<dynamic>,
      sales: SalesEntity.fromJson(json['sales'] as Map<String, dynamic>),
      url: json['url'] as String,
    );

Map<String, dynamic> _$$_EventToJson(_$_Event instance) => <String, dynamic>{
      'name': instance.name,
      'images': instance.images,
      'sales': instance.sales,
      'url': instance.url,
    };
