import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticketmaster/events_list/domain/repository/events_repository.dart';

import '../../entity/event_entity.dart';

part 'events_event.dart';

part 'events_state.dart';

part 'events_bloc.freezed.dart';

class EventsBloc extends Bloc<EventsEvent, EventsState> {
  EventsBloc(EventsRepository eventsRepository)
      : _repository = eventsRepository,
        super(const EventsState()) {
    on<_AllEventsSearchEvent>(_onAllEventsSearchEvent);
    on<_GenreSearchEvent>(_onGenreSearchEvent);
    on<_NameSearchEvent>(_onNameSearchEvent);
  }

  final EventsRepository _repository;

  Future<void> _onAllEventsSearchEvent(
    _AllEventsSearchEvent event,
    Emitter<EventsState> emit,
  ) async {
    emit(state.copyWith(status: EventsStatus.loading));

    final result = await _repository.getEvents(event.numberOfEvents);

    if (result.isSuccess) {
      emit(state.copyWith(
          status: EventsStatus.eventsFetched, eventsList: result.success));
    } else {
      emit(state.copyWith(status: EventsStatus.failure));
    }
  }

  Future<void> _onGenreSearchEvent(
      _GenreSearchEvent event,
      Emitter<EventsState> emit,
      ) async {
    emit(state.copyWith(status: EventsStatus.loading));

    final result = await _repository.getEventsByGenre(event.genre, event.numberOfEvents);

    if (result.isSuccess) {
      if (result.success.isEmpty) {
        emit(state.copyWith(
            status: EventsStatus.noEventsFound, eventsList: result.success));
      } else {
        emit(state.copyWith(
            status: EventsStatus.eventsSearchedByGenre, eventsList: result.success, genre: event.genre));
      }
    } else {
      emit(state.copyWith(status: EventsStatus.failure));
    }
  }

  Future<void> _onNameSearchEvent(
      _NameSearchEvent event,
      Emitter<EventsState> emit,
      ) async {
    emit(state.copyWith(status: EventsStatus.loading));

    final result = await _repository.getEventsByName(event.name, event.numberOfEvents);

    if (result.isSuccess) {
      if (result.success.isEmpty) {
        emit(state.copyWith(
            status: EventsStatus.noEventsFound, eventsList: result.success));
      } else {
        emit(state.copyWith(
            status: EventsStatus.eventsSearchedByName, eventsList: result.success, name: event.name));
      }
    } else {
      emit(state.copyWith(status: EventsStatus.failure));
    }
  }
}
