import 'package:result_type/result_type.dart';
import 'package:ticketmaster/events_list/data/events_data.dart';
import 'package:ticketmaster/events_list/entity/event_entity.dart';

class EventsRepository {
  EventsRepository({
    required EventsData eventsData,
  }) : _eventsData = eventsData;

  final EventsData _eventsData;

  Future<Result<List<EventEntity>, dynamic>> getEvents(int numberOfEvents) async {
    try {
      final response = await _eventsData.getEvents(numberOfEvents);
      return Success(response);
    } catch (error) {
      return Failure(error);
    }
  }

  Future<Result<List<EventEntity>, dynamic>> getEventsByGenre(String genre, int numberOfEvents) async {
    try {
      final response = await _eventsData.getEventsByGenre(genre, numberOfEvents);
      return Success(response);
    } catch (error) {
      return Failure(error);
    }
  }

  Future<Result<List<EventEntity>, dynamic>> getEventsByName(String name, int numberOfEvents) async {
    try {
      final response = await _eventsData.getEventsByName(name, numberOfEvents);
      return Success(response);
    } catch (error) {
      return Failure(error);
    }
  }
}
