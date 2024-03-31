# Reproducing issue with pattern matching

Issue: None of the patterns in the switch expression the matched input value. See https://github.com/dart-lang/language/issues/3488 for details.

There is `module_type` enum. There is also `extension` in `module_type_extensions`.

Somehow sometimes enum is not matched with any switch case although `switch` is exhaustively matched.

Issues was originally discuess on X (Twitter): https://twitter.com/petrnymsa/status/1768353866796470492


Trigger hot-reload in `EnabledModulesView`.

Some noticable things:
- Removing `shared/widgets/dialogs/action/*` will stop issue to appear. This file is not imported, nor anyhow related to widget with issue.
- Android and iOS do the same
- MacOS or Windows host (developer machine) do the same.
- It seems that it is mandatory to have some "async" load of state - for example BLOC.


Flutter info

```dart

Flutter 3.19.4 • channel stable • https://github.com/flutter/flutter.git
Framework • revision 68bfaea224 (11 days ago) • 2024-03-20 15:36:31 -0700
Engine • revision a5c24f538d
Tools • Dart 3.3.2 • DevTools 2.31.1

```
