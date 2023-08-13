part of 'events_bloc.dart';

enum EventsStatus {
  initial,
  loading,
  eventsFetched,
  failure,
}

@freezed
class EventsState with _$EventsState {
  const factory EventsState({
    @Default(EventsStatus.initial) EventsStatus status,
    @Default([]) List<EventEntity> eventsList,
  }) = _EventsState;
}
