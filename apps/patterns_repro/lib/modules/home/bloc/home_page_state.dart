part of 'home_page_bloc.dart';

sealed class HomePageState extends Equatable {
  const HomePageState();
}

class HomeModulesLoading extends HomePageState {
  @override
  List<Object?> get props => [];

  const HomeModulesLoading();
}

class HomeModulesReady extends HomePageState {
  final List<ModuleType> modules;

  @override
  List<Object?> get props => [modules];

  const HomeModulesReady({required this.modules});
}
