import 'package:flutter/material.dart';

import 'package:logger_plugin_conditional/logger_plugin_conditional.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Logger logger = new Logger('my_app');

  @override
  void initState() {
    super.initState();
    logger.log('initState');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
      ),
    );
  }
}
