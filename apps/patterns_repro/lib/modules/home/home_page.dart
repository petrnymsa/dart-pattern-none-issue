import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patterns_repro/modules/home/bloc/home_page_bloc.dart';
import 'package:patterns_repro/modules/home/widgets/enabled_modules_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomePageBloc()..add(HomePageEvent.refresh()),
      child: const SafeArea(child: Scaffold(body: _Home())),
    );
  }
}

class _Home extends StatelessWidget {
  const _Home();

  @override
  Widget build(BuildContext context) {
    // ! REPRO: This seems to always work.
    // return EnabledModulesView(modules: [
    //   ModuleType.timetable,
    //   ModuleType.absence,
    // ]);
    // ! REPRO: BLOC seems mandatory too for reproducing issue
    return BlocBuilder<HomePageBloc, HomePageState>(
      builder: (context, state) {
        return switch (state) {
          HomeModulesLoading() => const Center(
              child: CircularProgressIndicator(),
            ),
          HomeModulesReady() => EnabledModulesView(modules: state.modules),
        };
      },
    );
  }
}
