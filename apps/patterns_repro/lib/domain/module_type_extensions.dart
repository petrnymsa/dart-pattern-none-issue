import 'package:patterns_repro/shared/shared.dart';

extension AssetsExtensionsModuleType on ModuleType {
  String get assetImage {
    return switch (this) {
      ModuleType.absence => 'absenceIcon',
      ModuleType.classbook => 'classBookIcon',
      ModuleType.events => 'eventsPlanIcon',
      ModuleType.homeworks => 'homeworkIcon',
      ModuleType.marks || ModuleType.marking => 'marksIcon',
      ModuleType.timetable => 'timetableIcon',
      ModuleType.teaching => 'teachingIcon',
      ModuleType.substitutions => 'substitutionIcon',
      ModuleType.subjects => 'subjectsIcon',
      ModuleType.semester => 'semesterIcon',
      ModuleType.gdpr => 'gdprIcon',
      ModuleType.campaign => 'infoChannelIcon',
      // REST
      ModuleType.application ||
      ModuleType.profile ||
      ModuleType.unknown ||
      ModuleType.webBased ||
      ModuleType.webmodule =>
        'downloadOfflineDataIcon',
    };
  }
}
