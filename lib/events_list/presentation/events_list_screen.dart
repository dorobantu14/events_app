import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ticketmaster/core/core.dart';
import 'package:ticketmaster/events_list/presentation/event_card.dart';
import 'package:ticketmaster/events_list/presentation/filter_bar.dart';
import 'package:ticketmaster/events_list/domain/bloc/events_bloc.dart';

class EventsListScreen extends StatefulWidget {
  const EventsListScreen({Key? key}) : super(key: key);

  @override
  State<EventsListScreen> createState() => _EventsListScreenState();
}

class _EventsListScreenState extends State<EventsListScreen> {
  final ScrollController _scrollController = ScrollController();
  int eventsIndex = 0;
  int newEventsIndex = 20;
  final eventsCount = 20;

  @override
  void initState() {
    super.initState();
    context
        .read<EventsBloc>()
        .add(EventsEvent.getAllEvents(numberOfEvents: newEventsIndex));
    _scrollController.addListener(loadMoreEvents);
  }

  void loadMoreEvents() {
    if (_scrollController.position.atEdge &&
        _scrollController.position.pixels != 0) {
      final status = context.read<EventsBloc>().state.status;
      final bloc = context.read<EventsBloc>();
      setState(() {
        eventsIndex = newEventsIndex;
        newEventsIndex += eventsCount;
      });
      if (status == EventsStatus.eventsFetched) {
        bloc.add(EventsEvent.getAllEvents(numberOfEvents: newEventsIndex));
      } else if (status == EventsStatus.eventsSearchedByGenre) {
        bloc.add(EventsEvent.getEventsByGenre(
            genre: bloc.state.genre, numberOfEvents: newEventsIndex));
      } else if (status == EventsStatus.eventsSearchedByName) {
        bloc.add(EventsEvent.getEventsByName(
            name: bloc.state.name, numberOfEvents: newEventsIndex));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        bottom: false,
        minimum: const EdgeInsets.only(top: 62),
        child: BlocBuilder<EventsBloc, EventsState>(
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                getTitle(),
                const FilterBar(),
                buildEventsSection(state),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget getRefreshIndicator(EventsState state) {
    return Expanded(
      child: RefreshIndicator(
        color: AppColors.orangeColor,
        onRefresh: () {
          return Future.delayed(
            const Duration(seconds: 1),
            getPreviousEvents,
          );
        },
        child: getEventsList(state),
      ),
    );
  }

  void getPreviousEvents() {
    if (eventsIndex > 0) {
      setState(() {
        eventsIndex -= eventsCount;
        newEventsIndex -= eventsCount;
      });
    }
  }

  Widget buildEventsSection(EventsState state) {
    return state.status == EventsStatus.loading
        ? getLoader(state)
        : state.eventsList.isEmpty
            ? Center(child: SvgPicture.asset(Strings.noResultIconPath))
            : getRefreshIndicator(state);
  }

  Widget getLoader(EventsState state) {
    return Align(
      alignment: Alignment.center,
      child: CircularProgressIndicator(
        color: AppColors.orangeColor,
      ),
    );
  }

  Widget getEventsList(EventsState state) {
    if (state.eventsList.length <= eventsIndex) {
      eventsIndex = 0;
      newEventsIndex = 20;
    }
    return ListView.builder(
      controller: _scrollController,
      itemCount: state.eventsList.length - eventsIndex,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        final event = state.eventsList[eventsIndex + index];
        String date = Strings.noDateText;
        if (event.sales.public.startDateTime != null &&
            event.sales.public.endDateTime != null) {
          final formattedStartDate =
              DateTimeExtention(event.sales.public.startDateTime!)
                  .dayMonthYearFormat;
          final formattedEndDate =
              DateTimeExtention(event.sales.public.endDateTime!)
                  .dayMonthYearFormat;
          date = '$formattedStartDate - $formattedEndDate';
        }
        return EventCard(
          name: event.name,
          date: date,
          images: event.images.map((e) => e['url'].toString()).toList(),
        );
      },
    );
  }

  Widget getTitle() {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Text(
        Strings.eventsText,
        style: TextStyles.titleTextStyle,
      ),
    );
  }
}
