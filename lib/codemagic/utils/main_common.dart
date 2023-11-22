import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xplore_codemagic_circleci_and_appium/codemagic/enums/environment.dart';
import 'package:xplore_codemagic_circleci_and_appium/codemagic/utils/config_reader.dart';

import '../../app_entry.dart';

Future<void> mainCommon(Environment env) async {
  WidgetsFlutterBinding.ensureInitialized();
  await ConfigReader.initialize();

  Color primaryColor;
  switch (env) {
    case Environment.prod:
      primaryColor = Colors.brown;
      break;
    case Environment.dev:
      primaryColor = Colors.teal;
  }

  runApp(
    Provider.value(
      value: primaryColor,
      child: const MyApp(),
    ),
  );
}
