import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ticketmaster/core/core.dart';
import 'package:ticketmaster/events_list/data/events_data.dart';
import 'package:ticketmaster/events_list/domain/bloc/events_bloc.dart';
import 'package:ticketmaster/events_list/domain/repository/events_repository.dart';
import 'package:ticketmaster/events_list/presentation/events_list_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final EventsRepository repository = EventsRepository(eventsData: EventsData());

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Strings.appTitle,
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => EventsBloc(repository),
        child: const EventsListScreen(),
      ),
    );
  }
}
