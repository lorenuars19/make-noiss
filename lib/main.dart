import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  static const String _title = 'Make Some Noiss';

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(_title),
        ),
        body: NoissMaker(),
      ),
    );
  }
}

class NoissMaker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO
    return null;
  }
}

