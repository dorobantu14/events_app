import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticketmaster/events_list/domain/repository/events_repository.dart';

import '../../entity/event_entity.dart';

part 'events_event.dart';

part 'events_state.dart';

part 'events_bloc.freezed.dart';

class EventsBloc extends Bloc<EventsEvent, EventsState> {
  EventsBloc(EventsRepository todosRepository)
      : _repository = todosRepository,
        super(const EventsState()) {
    on<EventsEvent>(_onEventsEvent);
  }

  final EventsRepository _repository;

  Future<void> _onEventsEvent(
    EventsEvent event,
    Emitter<EventsState> emit,
  ) async {
    emit(state.copyWith(status: EventsStatus.loading));

    final result = await _repository.getTodos();

    if (result.isSuccess) {
      emit(state.copyWith(
          status: EventsStatus.eventsFetched, eventsList: result.success));
    } else {
      emit(state.copyWith(status: EventsStatus.failure));
    }
  }
}
