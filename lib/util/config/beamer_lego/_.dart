import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';

import '../../../main.dart';
import '../../_/shared_params/_/material_app.dart';


void setBeamerPathUrlStrategy() {
  // if you want to not use hash urls, uncomment the next line
  // Beamer.setPathUrlStrategy();
}


final beamer_router = BeamerDelegate(
  navigatorObservers: MaterialAppParams.navigatorObservers ?? [],
  locationBuilder: RoutesLocationBuilder(
    routes: {
      '/': (context, state, data) => MyAppHome ?? InitView(),
    },
  ).call,
);