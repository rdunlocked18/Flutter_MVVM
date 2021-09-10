// Dart imports:
import 'dart:io';

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:auto_route/auto_route.dart';

abstract class Functions {
  static bool get isIos => Platform.isIOS;
  static bool get isAndroid => Platform.isAndroid;

  static String get platform {
    if (isIos) {
      return 'iOS';
    } else if (isAndroid) {
      return 'Android';
    }
    return 'Unknown';
  }

  /// Navigate to any app page with/without arguments
  static void navigateToRoute(
      BuildContext context, PageRouteInfo<dynamic> route,
      {dynamic arguments}) {
    AutoRouter.of(context).push(route);
  }

  static void navigateToRoutePushReplacemant(
      BuildContext context, PageRouteInfo<dynamic> route,
      {dynamic arguments}) {
    AutoRouter.of(context).pushAndPopUntil(route, predicate: arguments);
  }

  static void pop(BuildContext context) {
    AutoRouter.of(context).pop();
  }
}
