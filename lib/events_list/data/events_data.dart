import 'package:dio/dio.dart';

import 'package:ticketmaster/events_list/entity/event_entity.dart';

import '../../env/env.dart';

class EventsData {
  final Dio _dio = Dio();
  final String apiKey = Env.apiKey;

  Future<List<EventEntity>> getEvents() async {
    var response = await _dio.get(
        'https://app.ticketmaster.com/discovery/v2/events?apikey=$apiKey&locale=*');
    final List<EventEntity> eventsList = [];
    for (var event in response.data['_embedded']['events']) {
      eventsList.add(EventEntity.fromJson(event));
    }
    return eventsList;
  }
}
