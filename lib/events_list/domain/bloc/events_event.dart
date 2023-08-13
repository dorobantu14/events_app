part of 'events_bloc.dart';

@freezed
class EventsEvent with _$EventsEvent {
  const factory EventsEvent.getEvents({
    required List<EventEntity> eventsList,
  }) = _EventsEvent;
}
