import 'package:flutter/material.dart';
import 'utils/config_reader.dart';

class CodeMagicCounter extends StatefulWidget {
  const CodeMagicCounter({super.key});

  @override
  State<CodeMagicCounter> createState() => _CodeMagicCounterState();
}

class _CodeMagicCounterState extends State<CodeMagicCounter> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter += ConfigReader.getIncrementAmount();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text('CodeMagic'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times :',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              'Secret: ${ConfigReader.getSecretKey()}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
