import 'package:flutter/material.dart';
import 'package:patterns_repro/domain/domain.dart';
import 'package:patterns_repro/shared/core/core.dart';

class EnabledModulesView extends StatelessWidget {
  final List<ModuleType> modules;

  // ! REPRO: Change this to trigger issues
  static const double height = 60;

  const EnabledModulesView({required this.modules, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: height,
          color: Colors.red,
        ),
        _ModulesList(modules: modules),
      ],
    );
  }
}

class _ModulesList extends StatelessWidget {
  final List<ModuleType> modules;

  const _ModulesList({super.key, required this.modules});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (final m in modules)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Text(m.assetImage),
              width: 60,
              height: 60,
              color: Colors.amber.shade100,
            ),
          )
      ],
    );
  }
}
