part of 'events_bloc.dart';

@freezed
class EventsEvent with _$EventsEvent {
  const factory EventsEvent.getAllEvents({
    required List<EventEntity> eventsList,
    required int numberOfEvents,
  }) = _AllEventsSearchEvent;

  const factory EventsEvent.getEventsByGenre({
    required List<EventEntity> eventsList,
    required String genre,
    required int numberOfEvents,
  }) = _GenreSearchEvent;

  const factory EventsEvent.getEventsByName({
    required List<EventEntity> eventsList,
    required String name,
    required int numberOfEvents,
  }) = _NameSearchEvent;
}
