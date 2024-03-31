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
