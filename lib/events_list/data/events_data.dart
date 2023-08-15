import 'package:dio/dio.dart';

import 'package:ticketmaster/events_list/entity/event_entity.dart';

import '../../env/env.dart';

class EventsData {
  final Dio _dio = Dio();
  final String apiKey = Env.apiKey;

  Future<List<EventEntity>> getEvents(int numberOfEvents) async {
    var response = await _dio.get(
        'https://app.ticketmaster.com/discovery/v2/events?apikey=$apiKey&size=$numberOfEvents');
    final List<EventEntity> eventsList = [];
    for (var event in response.data['_embedded']['events']) {
      eventsList.add(EventEntity.fromJson(event));
    }
    return eventsList;
  }

  Future<List<EventEntity>> getEventsByGenre(String genre, int numberOfEvents) async {
    var response = await _dio.get(
        'https://app.ticketmaster.com/discovery/v2/events?apikey=$apiKey&classificationName=$genre&size=$numberOfEvents');
    final List<EventEntity> eventsList = [];
    if (response.data['page']['totalElements'] == 0) {
      return [];
    } else {
      for (var event in response.data['_embedded']['events']) {
        eventsList.add(EventEntity.fromJson(event));
      }
    }
    return eventsList;
  }

  Future<List<EventEntity>> getEventsByName(String keyword, int numberOfEvents) async {
    var response = await _dio.get(
        'https://app.ticketmaster.com/discovery/v2/events?apikey=$apiKey&keyword=$keyword&size=$numberOfEvents');
    final List<EventEntity> eventsList = [];
    if (response.data['page']['totalElements'] == 0) {
      return [];
    } else {
      for (var event in response.data['_embedded']['events']) {
        eventsList.add(EventEntity.fromJson(event));
      }
    }
    return eventsList;
  }
}
