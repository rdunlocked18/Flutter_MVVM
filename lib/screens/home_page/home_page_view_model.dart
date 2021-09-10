// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:stacked/stacked.dart';

// Project imports:
import '../../routes/app_router.gr.dart';
import '../../utils/functions.dart';

class HomePageViewModel extends BaseViewModel {
  String title = "Home Page";
  String sampleText = "ViewModel for homePage";

  void onButtonPressed(BuildContext context) {
    // If there are Arguments in route directly use :
    // Functions.navigateToRoute(context, SecondRoute(name:"asd"));
    print("Button Clicked");
    Functions.navigateToRoute(context, SecondRoute());
  }
}
