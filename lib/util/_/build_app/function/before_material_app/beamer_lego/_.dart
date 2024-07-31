import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';

import '../../../../../../main.dart';
import '../../../../../config/beamer_lego/_.dart';
import '../../../../shared_params/_/material_app.dart';
import '../../../widget/material_app/_.dart';

@ReadyBeforeMaterialApp()
Future<void> readyForBeamerLego(BuildContext context) async {
  setBeamerPathUrlStrategy();

  currentMaterialApp = MaterialApp.router(
    routeInformationParser: BeamerParser(),
    routerDelegate: beamer_router,
    backButtonDispatcher: MaterialAppParams.backButtonDispatcher,
    localizationsDelegates: MaterialAppParams.localizationsDelegates,
    supportedLocales: MaterialAppParams.supportedLocales ?? const <Locale>[Locale('en', 'US')],
    locale: MaterialAppParams.locale,
    title: MaterialAppParams.appName ?? 'June',
    theme: MaterialAppParams.lightTheme,
    darkTheme: MaterialAppParams.darkTheme,
    themeMode: MaterialAppParams.themeMode ?? ThemeMode.system,
    debugShowCheckedModeBanner: false,
    builder: (context, child) {
      return materialAppInsideBuilder(context, child);
    },
  );
}
