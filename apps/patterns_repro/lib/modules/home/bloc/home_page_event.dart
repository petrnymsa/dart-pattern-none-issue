part of 'home_page_bloc.dart';

abstract class HomePageEvent {
  const HomePageEvent();

  factory HomePageEvent.refresh() => const RefreshModulesEvent();
}

class RefreshModulesEvent extends HomePageEvent {
  const RefreshModulesEvent();
}
