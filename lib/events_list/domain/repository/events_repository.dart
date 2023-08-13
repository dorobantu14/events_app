import 'package:result_type/result_type.dart';
import 'package:ticketmaster/events_list/data/events_data.dart';
import 'package:ticketmaster/events_list/entity/event_entity.dart';

class EventsRepository {
  EventsRepository({
    required EventsData eventsData,
  }) : _eventsData = eventsData;

  final EventsData _eventsData;

  Future<Result<List<EventEntity>, dynamic>> getTodos() async {
    try {
      final response = await _eventsData.getEvents();
      return Success(response);
    } catch (error) {
      return Failure(error);
    }
  }
}
