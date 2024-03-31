import 'package:patterns_core/patterns_core.dart';

export 'package:patterns_core/patterns_core.dart' show ModuleRights, ModuleType;

abstract class AppModule {
  String get name;

  ModuleType get type;

  /// If module is detected from API under different type this value should ve specified.
  ///
  /// By default it is assumed that `type` and `registrationType` are equal.
  ModuleType get registreeParent => type.registreeParent ?? type;

  const AppModule();
}
