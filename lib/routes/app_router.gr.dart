// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// Flutter imports:
import 'package:flutter/material.dart' as _i2;

// Package imports:
import 'package:auto_route/auto_route.dart' as _i1;

// Project imports:
import '../screens/home_page/home_page.dart' as _i3;
import '../screens/second_page/second_page.dart' as _i4;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i3.HomePage();
        }),
    SecondRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i4.SecondPage();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(HomeRoute.name, path: '/'),
        _i1.RouteConfig(SecondRoute.name, path: '/second-page')
      ];
}

class HomeRoute extends _i1.PageRouteInfo {
  const HomeRoute() : super(name, path: '/');

  static const String name = 'HomeRoute';
}

class SecondRoute extends _i1.PageRouteInfo {
  const SecondRoute() : super(name, path: '/second-page');

  static const String name = 'SecondRoute';
}
