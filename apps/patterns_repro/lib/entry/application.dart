// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:patterns_repro/modules/home/home_page.dart';
// ! Cyclic import issue?
import 'package:patterns_repro/shared/router/router.dart';

/// Entry point for  application.
class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return _MaterialAppRepro();
  }
}

class _MaterialAppRepro extends StatelessWidget {
  const _MaterialAppRepro();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
