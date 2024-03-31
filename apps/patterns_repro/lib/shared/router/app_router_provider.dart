import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:patterns_repro/shared/router/app_router.dart';
import 'package:provider/provider.dart';

class AppRouterProvider extends StatefulWidget {
  // ignore: prefer-correct-callback-field-name, this is correct
  final Widget Function(GoRouter router) builder;

  const AppRouterProvider({required this.builder, super.key});

  @override
  State<AppRouterProvider> createState() => AppRouterProviderState();
}

class AppRouterProviderState extends State<AppRouterProvider> {
  final RouteObserver<PageRoute<void>> _routeObserver = RouteObserver();

  late final AppRouter _appRouter;

  // ignore: prefer-widget-private-members, we need this public
  GoRouter get router => _appRouter.router;

  @override
  void initState() {
    super.initState();
    _appRouter = AppRouter(routeObserver: _routeObserver);
  }

  @override
  Widget build(BuildContext context) {
    return Provider.value(
      value: _routeObserver,
      child: widget.builder(router),
    );
  }
}
