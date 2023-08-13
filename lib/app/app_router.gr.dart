// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    EventsListRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const EventsListScreen()),
      );
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          EventsListRoute.name,
          path: '/',
        )
      ];
}

/// generated route for
/// [EventsListScreen]
class EventsListRoute extends PageRouteInfo<void> {
  const EventsListRoute()
      : super(
          EventsListRoute.name,
          path: '/',
        );

  static const String name = 'EventsListRoute';
}
