import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patterns_repro/shared/core/core.dart';

part 'home_page_event.dart';
part 'home_page_state.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  HomePageBloc() : super(const HomeModulesLoading()) {
    on<RefreshModulesEvent>(_onRefreshModules);
  }

  void _onRefreshModules(
    RefreshModulesEvent event,
    Emitter<HomePageState> emit,
  ) {
    emit(const HomeModulesLoading());

    // emit(
    //   const HomeModulesReady(
    //     modules: [
    //       EnabledModule(type: ModuleType.komens),
    //       EnabledModule(type: ModuleType.absence),
    //       EnabledModule(type: ModuleType.timetable),
    //       EnabledModule(type: ModuleType.gdpr),
    //     ],
    //   ),
    // );
    emit(
      const HomeModulesReady(
        modules: [
          ModuleType.absence,
          ModuleType.timetable,
          ModuleType.gdpr,
          ModuleType.events,
        ],
      ),
    );
  }
}
