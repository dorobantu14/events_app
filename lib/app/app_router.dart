import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:ticketmaster/events_list/presentation/events_list_screen.dart';
part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  preferRelativeImports: false,
  routes: [
    AutoRoute(page: EventsListScreen, initial: true),
  ],
)
class AppRouter extends _$AppRouter {
  AppRouter();
}
