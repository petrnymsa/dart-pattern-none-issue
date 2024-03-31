import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:patterns_repro/modules/home/home_page.dart';

class AppRouter {
  late final router = GoRouter(
    observers: [
      _routeObserver,
      //HideKeyboardObserver(),
      // GoRouterAnalyticsObserver(
      //   analytics: _analytics,
      //   onError: (e) => logger.warning('Failed to send analytics event', error: e),
      // ),
    ],
    initialLocation: '/home',
    routes: [GoRoute(path: '/home', builder: (context, state) => HomePage())],
  );

  final RouteObserver<ModalRoute<void>> _routeObserver;
  //final AnalyticsFacade _analytics;

  AppRouter({required RouteObserver<ModalRoute<void>> routeObserver}) : _routeObserver = routeObserver;
  // _analytics = analytics ?? GetIt.I<AnalyticsFacade>();
}
