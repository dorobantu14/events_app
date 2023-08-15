part of 'events_bloc.dart';

enum EventsStatus {
  initial,
  loading,
  eventsFetched,
  eventsSearchedByGenre,
  eventsSearchedByName,
  noEventsFound,
  failure,
}

@freezed
class EventsState with _$EventsState {
  const factory EventsState({
    @Default(EventsStatus.initial) EventsStatus status,
    @Default([]) List<EventEntity> eventsList,
    @Default('') String genre,
    @Default('') String name,
  }) = _EventsState;
}
