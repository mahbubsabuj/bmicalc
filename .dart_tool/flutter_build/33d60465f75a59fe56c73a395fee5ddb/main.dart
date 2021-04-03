// @dart=2.1

import 'dart:ui' as ui;

import 'package:bmicalc/main.dart' as entrypoint;

Future<void> main() async {
  await ui.webOnlyInitializePlatform();
  entrypoint.main();
}
