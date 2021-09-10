// Package imports:
import 'package:auto_route/auto_route.dart';

// Project imports:
import '../screens/home_page/home_page.dart';
import '../screens/second_page/second_page.dart';

// Pages and Everything below packages above;

// When the routes change, run
// "flutter packages pub run build_runner build"

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, initial: true),
    AutoRoute(page: SecondPage),
    // Add Page As
    // AutoRoute(page: ThirdPage),
  ],
)
class $AppRouter {}
