// ignore_for_file: prefer-static-class, unused_import, avoid-unused-parameters

// ! REPRO: Removing this file and related "barell" files stops issue.

import 'package:flutter/material.dart';
import 'package:patterns_repro/shared/router/router.dart';

void showActionDialog(BuildContext context) {
  //if (!context.widgetIsOnCurrentRoute) return;
}

/// Predefined actionDialog with subtitle and optional thirdline text.
void showUiActionDialog(BuildContext context) => showActionDialog(
      context,
      //  action: action,
    );
