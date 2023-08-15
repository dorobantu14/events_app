// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'events_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EventsEvent {
  List<EventEntity> get eventsList => throw _privateConstructorUsedError;
  int get numberOfEvents => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<EventEntity> eventsList, int numberOfEvents)
        getAllEvents,
    required TResult Function(
            List<EventEntity> eventsList, String genre, int numberOfEvents)
        getEventsByGenre,
    required TResult Function(
            List<EventEntity> eventsList, String name, int numberOfEvents)
        getEventsByName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<EventEntity> eventsList, int numberOfEvents)?
        getAllEvents,
    TResult? Function(
            List<EventEntity> eventsList, String genre, int numberOfEvents)?
        getEventsByGenre,
    TResult? Function(
            List<EventEntity> eventsList, String name, int numberOfEvents)?
        getEventsByName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<EventEntity> eventsList, int numberOfEvents)?
        getAllEvents,
    TResult Function(
            List<EventEntity> eventsList, String genre, int numberOfEvents)?
        getEventsByGenre,
    TResult Function(
            List<EventEntity> eventsList, String name, int numberOfEvents)?
        getEventsByName,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AllEventsSearchEvent value) getAllEvents,
    required TResult Function(_GenreSearchEvent value) getEventsByGenre,
    required TResult Function(_NameSearchEvent value) getEventsByName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AllEventsSearchEvent value)? getAllEvents,
    TResult? Function(_GenreSearchEvent value)? getEventsByGenre,
    TResult? Function(_NameSearchEvent value)? getEventsByName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AllEventsSearchEvent value)? getAllEvents,
    TResult Function(_GenreSearchEvent value)? getEventsByGenre,
    TResult Function(_NameSearchEvent value)? getEventsByName,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EventsEventCopyWith<EventsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventsEventCopyWith<$Res> {
  factory $EventsEventCopyWith(
          EventsEvent value, $Res Function(EventsEvent) then) =
      _$EventsEventCopyWithImpl<$Res, EventsEvent>;
  @useResult
  $Res call({List<EventEntity> eventsList, int numberOfEvents});
}

/// @nodoc
class _$EventsEventCopyWithImpl<$Res, $Val extends EventsEvent>
    implements $EventsEventCopyWith<$Res> {
  _$EventsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventsList = null,
    Object? numberOfEvents = null,
  }) {
    return _then(_value.copyWith(
      eventsList: null == eventsList
          ? _value.eventsList
          : eventsList // ignore: cast_nullable_to_non_nullable
              as List<EventEntity>,
      numberOfEvents: null == numberOfEvents
          ? _value.numberOfEvents
          : numberOfEvents // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AllEventsSearchEventCopyWith<$Res>
    implements $EventsEventCopyWith<$Res> {
  factory _$$_AllEventsSearchEventCopyWith(_$_AllEventsSearchEvent value,
          $Res Function(_$_AllEventsSearchEvent) then) =
      __$$_AllEventsSearchEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<EventEntity> eventsList, int numberOfEvents});
}

/// @nodoc
class __$$_AllEventsSearchEventCopyWithImpl<$Res>
    extends _$EventsEventCopyWithImpl<$Res, _$_AllEventsSearchEvent>
    implements _$$_AllEventsSearchEventCopyWith<$Res> {
  __$$_AllEventsSearchEventCopyWithImpl(_$_AllEventsSearchEvent _value,
      $Res Function(_$_AllEventsSearchEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventsList = null,
    Object? numberOfEvents = null,
  }) {
    return _then(_$_AllEventsSearchEvent(
      eventsList: null == eventsList
          ? _value._eventsList
          : eventsList // ignore: cast_nullable_to_non_nullable
              as List<EventEntity>,
      numberOfEvents: null == numberOfEvents
          ? _value.numberOfEvents
          : numberOfEvents // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_AllEventsSearchEvent implements _AllEventsSearchEvent {
  const _$_AllEventsSearchEvent(
      {required final List<EventEntity> eventsList,
      required this.numberOfEvents})
      : _eventsList = eventsList;

  final List<EventEntity> _eventsList;
  @override
  List<EventEntity> get eventsList {
    if (_eventsList is EqualUnmodifiableListView) return _eventsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_eventsList);
  }

  @override
  final int numberOfEvents;

  @override
  String toString() {
    return 'EventsEvent.getAllEvents(eventsList: $eventsList, numberOfEvents: $numberOfEvents)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AllEventsSearchEvent &&
            const DeepCollectionEquality()
                .equals(other._eventsList, _eventsList) &&
            (identical(other.numberOfEvents, numberOfEvents) ||
                other.numberOfEvents == numberOfEvents));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_eventsList), numberOfEvents);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AllEventsSearchEventCopyWith<_$_AllEventsSearchEvent> get copyWith =>
      __$$_AllEventsSearchEventCopyWithImpl<_$_AllEventsSearchEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<EventEntity> eventsList, int numberOfEvents)
        getAllEvents,
    required TResult Function(
            List<EventEntity> eventsList, String genre, int numberOfEvents)
        getEventsByGenre,
    required TResult Function(
            List<EventEntity> eventsList, String name, int numberOfEvents)
        getEventsByName,
  }) {
    return getAllEvents(eventsList, numberOfEvents);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<EventEntity> eventsList, int numberOfEvents)?
        getAllEvents,
    TResult? Function(
            List<EventEntity> eventsList, String genre, int numberOfEvents)?
        getEventsByGenre,
    TResult? Function(
            List<EventEntity> eventsList, String name, int numberOfEvents)?
        getEventsByName,
  }) {
    return getAllEvents?.call(eventsList, numberOfEvents);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<EventEntity> eventsList, int numberOfEvents)?
        getAllEvents,
    TResult Function(
            List<EventEntity> eventsList, String genre, int numberOfEvents)?
        getEventsByGenre,
    TResult Function(
            List<EventEntity> eventsList, String name, int numberOfEvents)?
        getEventsByName,
    required TResult orElse(),
  }) {
    if (getAllEvents != null) {
      return getAllEvents(eventsList, numberOfEvents);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AllEventsSearchEvent value) getAllEvents,
    required TResult Function(_GenreSearchEvent value) getEventsByGenre,
    required TResult Function(_NameSearchEvent value) getEventsByName,
  }) {
    return getAllEvents(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AllEventsSearchEvent value)? getAllEvents,
    TResult? Function(_GenreSearchEvent value)? getEventsByGenre,
    TResult? Function(_NameSearchEvent value)? getEventsByName,
  }) {
    return getAllEvents?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AllEventsSearchEvent value)? getAllEvents,
    TResult Function(_GenreSearchEvent value)? getEventsByGenre,
    TResult Function(_NameSearchEvent value)? getEventsByName,
    required TResult orElse(),
  }) {
    if (getAllEvents != null) {
      return getAllEvents(this);
    }
    return orElse();
  }
}

abstract class _AllEventsSearchEvent implements EventsEvent {
  const factory _AllEventsSearchEvent(
      {required final List<EventEntity> eventsList,
      required final int numberOfEvents}) = _$_AllEventsSearchEvent;

  @override
  List<EventEntity> get eventsList;
  @override
  int get numberOfEvents;
  @override
  @JsonKey(ignore: true)
  _$$_AllEventsSearchEventCopyWith<_$_AllEventsSearchEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GenreSearchEventCopyWith<$Res>
    implements $EventsEventCopyWith<$Res> {
  factory _$$_GenreSearchEventCopyWith(
          _$_GenreSearchEvent value, $Res Function(_$_GenreSearchEvent) then) =
      __$$_GenreSearchEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<EventEntity> eventsList, String genre, int numberOfEvents});
}

/// @nodoc
class __$$_GenreSearchEventCopyWithImpl<$Res>
    extends _$EventsEventCopyWithImpl<$Res, _$_GenreSearchEvent>
    implements _$$_GenreSearchEventCopyWith<$Res> {
  __$$_GenreSearchEventCopyWithImpl(
      _$_GenreSearchEvent _value, $Res Function(_$_GenreSearchEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventsList = null,
    Object? genre = null,
    Object? numberOfEvents = null,
  }) {
    return _then(_$_GenreSearchEvent(
      eventsList: null == eventsList
          ? _value._eventsList
          : eventsList // ignore: cast_nullable_to_non_nullable
              as List<EventEntity>,
      genre: null == genre
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfEvents: null == numberOfEvents
          ? _value.numberOfEvents
          : numberOfEvents // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GenreSearchEvent implements _GenreSearchEvent {
  const _$_GenreSearchEvent(
      {required final List<EventEntity> eventsList,
      required this.genre,
      required this.numberOfEvents})
      : _eventsList = eventsList;

  final List<EventEntity> _eventsList;
  @override
  List<EventEntity> get eventsList {
    if (_eventsList is EqualUnmodifiableListView) return _eventsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_eventsList);
  }

  @override
  final String genre;
  @override
  final int numberOfEvents;

  @override
  String toString() {
    return 'EventsEvent.getEventsByGenre(eventsList: $eventsList, genre: $genre, numberOfEvents: $numberOfEvents)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GenreSearchEvent &&
            const DeepCollectionEquality()
                .equals(other._eventsList, _eventsList) &&
            (identical(other.genre, genre) || other.genre == genre) &&
            (identical(other.numberOfEvents, numberOfEvents) ||
                other.numberOfEvents == numberOfEvents));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_eventsList), genre, numberOfEvents);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GenreSearchEventCopyWith<_$_GenreSearchEvent> get copyWith =>
      __$$_GenreSearchEventCopyWithImpl<_$_GenreSearchEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<EventEntity> eventsList, int numberOfEvents)
        getAllEvents,
    required TResult Function(
            List<EventEntity> eventsList, String genre, int numberOfEvents)
        getEventsByGenre,
    required TResult Function(
            List<EventEntity> eventsList, String name, int numberOfEvents)
        getEventsByName,
  }) {
    return getEventsByGenre(eventsList, genre, numberOfEvents);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<EventEntity> eventsList, int numberOfEvents)?
        getAllEvents,
    TResult? Function(
            List<EventEntity> eventsList, String genre, int numberOfEvents)?
        getEventsByGenre,
    TResult? Function(
            List<EventEntity> eventsList, String name, int numberOfEvents)?
        getEventsByName,
  }) {
    return getEventsByGenre?.call(eventsList, genre, numberOfEvents);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<EventEntity> eventsList, int numberOfEvents)?
        getAllEvents,
    TResult Function(
            List<EventEntity> eventsList, String genre, int numberOfEvents)?
        getEventsByGenre,
    TResult Function(
            List<EventEntity> eventsList, String name, int numberOfEvents)?
        getEventsByName,
    required TResult orElse(),
  }) {
    if (getEventsByGenre != null) {
      return getEventsByGenre(eventsList, genre, numberOfEvents);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AllEventsSearchEvent value) getAllEvents,
    required TResult Function(_GenreSearchEvent value) getEventsByGenre,
    required TResult Function(_NameSearchEvent value) getEventsByName,
  }) {
    return getEventsByGenre(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AllEventsSearchEvent value)? getAllEvents,
    TResult? Function(_GenreSearchEvent value)? getEventsByGenre,
    TResult? Function(_NameSearchEvent value)? getEventsByName,
  }) {
    return getEventsByGenre?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AllEventsSearchEvent value)? getAllEvents,
    TResult Function(_GenreSearchEvent value)? getEventsByGenre,
    TResult Function(_NameSearchEvent value)? getEventsByName,
    required TResult orElse(),
  }) {
    if (getEventsByGenre != null) {
      return getEventsByGenre(this);
    }
    return orElse();
  }
}

abstract class _GenreSearchEvent implements EventsEvent {
  const factory _GenreSearchEvent(
      {required final List<EventEntity> eventsList,
      required final String genre,
      required final int numberOfEvents}) = _$_GenreSearchEvent;

  @override
  List<EventEntity> get eventsList;
  String get genre;
  @override
  int get numberOfEvents;
  @override
  @JsonKey(ignore: true)
  _$$_GenreSearchEventCopyWith<_$_GenreSearchEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NameSearchEventCopyWith<$Res>
    implements $EventsEventCopyWith<$Res> {
  factory _$$_NameSearchEventCopyWith(
          _$_NameSearchEvent value, $Res Function(_$_NameSearchEvent) then) =
      __$$_NameSearchEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<EventEntity> eventsList, String name, int numberOfEvents});
}

/// @nodoc
class __$$_NameSearchEventCopyWithImpl<$Res>
    extends _$EventsEventCopyWithImpl<$Res, _$_NameSearchEvent>
    implements _$$_NameSearchEventCopyWith<$Res> {
  __$$_NameSearchEventCopyWithImpl(
      _$_NameSearchEvent _value, $Res Function(_$_NameSearchEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventsList = null,
    Object? name = null,
    Object? numberOfEvents = null,
  }) {
    return _then(_$_NameSearchEvent(
      eventsList: null == eventsList
          ? _value._eventsList
          : eventsList // ignore: cast_nullable_to_non_nullable
              as List<EventEntity>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfEvents: null == numberOfEvents
          ? _value.numberOfEvents
          : numberOfEvents // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_NameSearchEvent implements _NameSearchEvent {
  const _$_NameSearchEvent(
      {required final List<EventEntity> eventsList,
      required this.name,
      required this.numberOfEvents})
      : _eventsList = eventsList;

  final List<EventEntity> _eventsList;
  @override
  List<EventEntity> get eventsList {
    if (_eventsList is EqualUnmodifiableListView) return _eventsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_eventsList);
  }

  @override
  final String name;
  @override
  final int numberOfEvents;

  @override
  String toString() {
    return 'EventsEvent.getEventsByName(eventsList: $eventsList, name: $name, numberOfEvents: $numberOfEvents)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NameSearchEvent &&
            const DeepCollectionEquality()
                .equals(other._eventsList, _eventsList) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.numberOfEvents, numberOfEvents) ||
                other.numberOfEvents == numberOfEvents));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_eventsList), name, numberOfEvents);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NameSearchEventCopyWith<_$_NameSearchEvent> get copyWith =>
      __$$_NameSearchEventCopyWithImpl<_$_NameSearchEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<EventEntity> eventsList, int numberOfEvents)
        getAllEvents,
    required TResult Function(
            List<EventEntity> eventsList, String genre, int numberOfEvents)
        getEventsByGenre,
    required TResult Function(
            List<EventEntity> eventsList, String name, int numberOfEvents)
        getEventsByName,
  }) {
    return getEventsByName(eventsList, name, numberOfEvents);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<EventEntity> eventsList, int numberOfEvents)?
        getAllEvents,
    TResult? Function(
            List<EventEntity> eventsList, String genre, int numberOfEvents)?
        getEventsByGenre,
    TResult? Function(
            List<EventEntity> eventsList, String name, int numberOfEvents)?
        getEventsByName,
  }) {
    return getEventsByName?.call(eventsList, name, numberOfEvents);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<EventEntity> eventsList, int numberOfEvents)?
        getAllEvents,
    TResult Function(
            List<EventEntity> eventsList, String genre, int numberOfEvents)?
        getEventsByGenre,
    TResult Function(
            List<EventEntity> eventsList, String name, int numberOfEvents)?
        getEventsByName,
    required TResult orElse(),
  }) {
    if (getEventsByName != null) {
      return getEventsByName(eventsList, name, numberOfEvents);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AllEventsSearchEvent value) getAllEvents,
    required TResult Function(_GenreSearchEvent value) getEventsByGenre,
    required TResult Function(_NameSearchEvent value) getEventsByName,
  }) {
    return getEventsByName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AllEventsSearchEvent value)? getAllEvents,
    TResult? Function(_GenreSearchEvent value)? getEventsByGenre,
    TResult? Function(_NameSearchEvent value)? getEventsByName,
  }) {
    return getEventsByName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AllEventsSearchEvent value)? getAllEvents,
    TResult Function(_GenreSearchEvent value)? getEventsByGenre,
    TResult Function(_NameSearchEvent value)? getEventsByName,
    required TResult orElse(),
  }) {
    if (getEventsByName != null) {
      return getEventsByName(this);
    }
    return orElse();
  }
}

abstract class _NameSearchEvent implements EventsEvent {
  const factory _NameSearchEvent(
      {required final List<EventEntity> eventsList,
      required final String name,
      required final int numberOfEvents}) = _$_NameSearchEvent;

  @override
  List<EventEntity> get eventsList;
  String get name;
  @override
  int get numberOfEvents;
  @override
  @JsonKey(ignore: true)
  _$$_NameSearchEventCopyWith<_$_NameSearchEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EventsState {
  EventsStatus get status => throw _privateConstructorUsedError;
  List<EventEntity> get eventsList => throw _privateConstructorUsedError;
  String get genre => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EventsStateCopyWith<EventsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventsStateCopyWith<$Res> {
  factory $EventsStateCopyWith(
          EventsState value, $Res Function(EventsState) then) =
      _$EventsStateCopyWithImpl<$Res, EventsState>;
  @useResult
  $Res call(
      {EventsStatus status,
      List<EventEntity> eventsList,
      String genre,
      String name});
}

/// @nodoc
class _$EventsStateCopyWithImpl<$Res, $Val extends EventsState>
    implements $EventsStateCopyWith<$Res> {
  _$EventsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? eventsList = null,
    Object? genre = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EventsStatus,
      eventsList: null == eventsList
          ? _value.eventsList
          : eventsList // ignore: cast_nullable_to_non_nullable
              as List<EventEntity>,
      genre: null == genre
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EventsStateCopyWith<$Res>
    implements $EventsStateCopyWith<$Res> {
  factory _$$_EventsStateCopyWith(
          _$_EventsState value, $Res Function(_$_EventsState) then) =
      __$$_EventsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EventsStatus status,
      List<EventEntity> eventsList,
      String genre,
      String name});
}

/// @nodoc
class __$$_EventsStateCopyWithImpl<$Res>
    extends _$EventsStateCopyWithImpl<$Res, _$_EventsState>
    implements _$$_EventsStateCopyWith<$Res> {
  __$$_EventsStateCopyWithImpl(
      _$_EventsState _value, $Res Function(_$_EventsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? eventsList = null,
    Object? genre = null,
    Object? name = null,
  }) {
    return _then(_$_EventsState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EventsStatus,
      eventsList: null == eventsList
          ? _value._eventsList
          : eventsList // ignore: cast_nullable_to_non_nullable
              as List<EventEntity>,
      genre: null == genre
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EventsState implements _EventsState {
  const _$_EventsState(
      {this.status = EventsStatus.initial,
      final List<EventEntity> eventsList = const [],
      this.genre = '',
      this.name = ''})
      : _eventsList = eventsList;

  @override
  @JsonKey()
  final EventsStatus status;
  final List<EventEntity> _eventsList;
  @override
  @JsonKey()
  List<EventEntity> get eventsList {
    if (_eventsList is EqualUnmodifiableListView) return _eventsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_eventsList);
  }

  @override
  @JsonKey()
  final String genre;
  @override
  @JsonKey()
  final String name;

  @override
  String toString() {
    return 'EventsState(status: $status, eventsList: $eventsList, genre: $genre, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventsState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._eventsList, _eventsList) &&
            (identical(other.genre, genre) || other.genre == genre) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_eventsList), genre, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventsStateCopyWith<_$_EventsState> get copyWith =>
      __$$_EventsStateCopyWithImpl<_$_EventsState>(this, _$identity);
}

abstract class _EventsState implements EventsState {
  const factory _EventsState(
      {final EventsStatus status,
      final List<EventEntity> eventsList,
      final String genre,
      final String name}) = _$_EventsState;

  @override
  EventsStatus get status;
  @override
  List<EventEntity> get eventsList;
  @override
  String get genre;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_EventsStateCopyWith<_$_EventsState> get copyWith =>
      throw _privateConstructorUsedError;
}
