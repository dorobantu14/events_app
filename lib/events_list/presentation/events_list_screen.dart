import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ticketmaster/core/Strings/strings.dart';
import 'package:ticketmaster/core/colors/app_colors.dart';
import 'package:ticketmaster/core/extensions/date_time_extention.dart';
import 'package:ticketmaster/core/text_styles/text_styles.dart';
import 'package:ticketmaster/events_list/presentation/event_card.dart';

import '../data/events_data.dart';
import '../domain/bloc/events_bloc.dart';
import '../domain/repository/events_repository.dart';

class EventsListScreen extends StatefulWidget with AutoRouteWrapper {
  const EventsListScreen({Key? key}) : super(key: key);

  @override
  State<EventsListScreen> createState() => _EventsListScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    final EventsRepository eventsRepository = EventsRepository(
      eventsData: EventsData(),
    );
    return BlocProvider(
      create: (_) => EventsBloc(eventsRepository),
      child: this,
    );
  }
}

class _EventsListScreenState extends State<EventsListScreen> {
  @override
  void initState() {
    super.initState();
    context.read<EventsBloc>().add(const EventsEvent.getEvents(eventsList: []));
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
                getEventsList(state),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget getEventsList(EventsState state) {
    return Expanded(
      child: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        children: state.eventsList.map(
          (e) {
            final DateTime startDate = DateTime.parse(e.sales.public.startDateTime);
            final DateTime endDate = DateTime.parse(e.sales.public.endDateTime);
            final String formattedStartDate = DateTimeExtention(startDate).dayMonthYear;
            final String formattedEndDate = DateTimeExtention(endDate).dayMonthYear;
            return EventCard(
                name: e.name, date: '$formattedStartDate - $formattedEndDate', imageUrl: e.images[0]['url'],);
          },
        ).toList(),
      ),
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
