import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'codemagic/counter_app.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    MaterialColor primarySwatch = MaterialColor(
      Provider.of<Color>(context).value,
      <int, Color>{
        50: Provider.of<Color>(context).withOpacity(0.1),
        100: Provider.of<Color>(context).withOpacity(0.2),
        200: Provider.of<Color>(context).withOpacity(0.3),
        300: Provider.of<Color>(context).withOpacity(0.4),
        400: Provider.of<Color>(context).withOpacity(0.5),
        500: Provider.of<Color>(context).withOpacity(0.6),
        600: Provider.of<Color>(context).withOpacity(0.7),
        700: Provider.of<Color>(context).withOpacity(0.8),
        800: Provider.of<Color>(context).withOpacity(0.9),
        900: Provider.of<Color>(context).withOpacity(1.0),
      },
    );

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: primarySwatch,
        // useMaterial3: true,
      ),
      home: const CodeMagicCounter(),
    );
  }
}
