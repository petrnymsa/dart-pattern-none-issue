import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:patterns_repro/shared/router/router.dart';

/// Entry point for  application.
class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return AppRouterProvider(builder: _MaterialAppRepro.new);
  }
}

class _MaterialAppRepro extends StatelessWidget {
  final GoRouter router;

  const _MaterialAppRepro(this.router);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,
      routerDelegate: router.routerDelegate,
    );
  }
}
