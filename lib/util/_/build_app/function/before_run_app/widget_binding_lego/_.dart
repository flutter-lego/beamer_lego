import 'package:flutter/material.dart';

import '../../../../../../main.dart';

@ReadyBeforeRunApp(index: 1.0)
Future<void> readyForWidgetBindingLego() async {
  WidgetsFlutterBinding.ensureInitialized();
}
