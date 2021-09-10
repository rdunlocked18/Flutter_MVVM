// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:stacked/stacked.dart';

// Project imports:
import '../../generated/l10n.dart';
import 'home_page_view_model.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomePageViewModel>.reactive(
        viewModelBuilder: () => HomePageViewModel(),
        builder: (context, model, child) => _body(context, model));
  }

  Widget _body(BuildContext context, HomePageViewModel model) {
    return Scaffold(
        appBar: AppBar(
          title: Text(model.title),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Text(S.current.sampleMessage)),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  model.onButtonPressed(context);
                },
                child: Text("Navigate Call via VM")),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  model.onButtonPressed(context);
                },
                child: Text("All Pages")),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  model.onButtonPressed(context);
                },
                child: Text("Live Version")),
            SizedBox(
              height: 30,
            ),
            Text(model.sampleText)
          ],
        ));
  }
}
