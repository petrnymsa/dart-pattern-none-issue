// ignore_for_file: unnecessary_const

enum ModuleType {
  absence(
    'absence',
    isLoadedDynamically: true,
    hasPersonalisation: true,
    personalisationTabs: {
      PersonalisationModuleTabs.absenceMissed,
      PersonalisationModuleTabs.absenceDailyReport,
      PersonalisationModuleTabs.absenceMonthlyReport,
    },
  ),

  /// Internal "modules" within application such as "splash" or "home" page.
  application('application', isLoadedDynamically: false),

  campaign('campaign', isLoadedDynamically: true),

  classbook(
    'classbook',
    isLoadedDynamically: true,
    personalisationTabs: {
      PersonalisationModuleTabs.classbookLesson,
      PersonalisationModuleTabs.classbookAbsence,
    },
  ),

  events(
    'events',
    isLoadedDynamically: true,
    hasPersonalisation: true,
    personalisationTabs: {
      PersonalisationModuleTabs.eventsPlanTabUpcoming,
      PersonalisationModuleTabs.eventsPlanTabPassed,
    },
  ),

  // @Deprecated('???')
  // user('x', isWebBasedModule: false),
  gdpr(
    'gdpr',
    isLoadedDynamically: true,
    hasPersonalisation: true,
    personalisationTabs: {
      PersonalisationModuleTabs.gdprAgreementsOverview,
      PersonalisationModuleTabs.gdprCreditor,
    },
  ),

  homeworks(
    'homeworks',
    isLoadedDynamically: true,
    hasPersonalisation: true,
    personalisationTabs: {
      PersonalisationModuleTabs.homeworkCurrent,
      PersonalisationModuleTabs.homeworkAfterDeadline,
      PersonalisationModuleTabs.homeworkClosed,
    },
  ),

  marking(
    'marking',
    isLoadedDynamically: true,
    hasPersonalisation: true,
    personalisationTabs: {
      PersonalisationModuleTabs.markingWritethemark,
      PersonalisationModuleTabs.markingMarkingsheet,
    },
  ),

  marks(
    'marks',
    isLoadedDynamically: true,
    hasPersonalisation: true,
    personalisationTabs: {
      PersonalisationModuleTabs.marksTabBydate,
      PersonalisationModuleTabs.marksTabBysubject,
    },
  ),

  profile('profile', isLoadedDynamically: false),

  semester(
    'semester',
    isLoadedDynamically: true,
    registreeParent: ModuleType.marks,
    hasPersonalisation: true,
    personalisationTabs: {
      PersonalisationModuleTabs.semesterMarks,
      PersonalisationModuleTabs.semesterSummary,
      PersonalisationModuleTabs.semesterManner,
    },
  ),

  subjects('subjects', isLoadedDynamically: true),

  substitutions('substitutions', isLoadedDynamically: true),

  teaching(
    'teaching',
    isLoadedDynamically: true,
    registreeParent: ModuleType.subjects,
  ),

  timetable(
    'timetable',
    isLoadedDynamically: true,
    hasPersonalisation: true,
    personalisationTabs: const {
      PersonalisationModuleTabs.timetableWeekTimetable,
      PersonalisationModuleTabs.timetablePermanentTimetable,
    },
  ),

  unknown('unknown', isLoadedDynamically: false),

  webBased('web_based', isLoadedDynamically: true),

  webmodule('webmodule', isLoadedDynamically: false);

  final String key;
  final bool isLoadedDynamically;
  final bool hasPersonalisation;

  /// Module is hidden behind different module type which comes from API.
  final ModuleType? registreeParent;

  final Set<PersonalisationModuleTabs> personalisationTabs;

  const ModuleType(
    this.key, {
    required this.isLoadedDynamically,
    this.registreeParent,
    this.hasPersonalisation = false,
    this.personalisationTabs = const {},
  });

  static List<ModuleType> get configurableModules =>
      ModuleType.values.where((element) => element.hasPersonalisation).toList();

  static ModuleType decodeModuleType(String key) {
    return ModuleType.values.firstWhere((moduleType) => moduleType.key == key, orElse: () => ModuleType.unknown);
  }
}

enum PersonalisationModuleTabs {
  absenceDailyReport,
  absenceMissed,
  absenceMonthlyReport,
  classbookAbsence,
  classbookLesson,
  eventsPlanTabPassed,
  eventsPlanTabUpcoming,
  gdprAgreementsOverview,
  gdprCreditor,
  homeworkAfterDeadline,
  homeworkClosed,
  homeworkCurrent,
  markingMarkingsheet,
  markingWritethemark,
  marksTabBydate,
  marksTabBysubject,
  semesterManner,
  semesterMarks,
  semesterSummary,
  timetablePermanentTimetable,
  timetableWeekTimetable,
}
