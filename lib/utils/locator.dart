// Package imports:
import 'package:get_it/get_it.dart';

// Project imports:
import '../services/name_service.dart';

final locator = GetIt.instance;

void setupLocator() {
  GetIt.I.registerSingleton(NameService());
}
