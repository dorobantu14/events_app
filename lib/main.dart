import 'package:flutter/material.dart';
import 'package:ticketmaster/app/app_router.dart';

void main() {
  final appRouter = AppRouter();

  runApp(MyApp(appRouter: appRouter));
}

class MyApp extends StatelessWidget {
  final AppRouter _appRouter;

  const MyApp({super.key, required AppRouter appRouter})
      : _appRouter = appRouter;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Todo list',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      debugShowCheckedModeBanner: false,
    );
  }
}
