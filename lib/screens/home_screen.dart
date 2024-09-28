import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:tutorial/libreries/console_logger.dart';
import 'package:tutorial/themes/colors.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _debugMessage = 'debug message';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(backgroundColor: white, title: const Text('Tutorial - Logger')),
      floatingActionButton: FloatingActionButton(
        onPressed: _onPressed,
        backgroundColor: primary,
        child: const Icon(Icons.add, color: white),
      ),
    );
  }

  void _onPressed() {
    debugPrint(_debugMessage);
    log('debug: $_debugMessage');
    log('debug', name: 'debug message');
    ConsoleLogger.logger.v('This is verbose');
    ConsoleLogger.logger.d('This is a debug message');
    ConsoleLogger.logger.i('This is info, should be used for public calls');
    ConsoleLogger.logger.w('This might become a warning message');
    ConsoleLogger.logger.e('Error!!!! Something bad has happened');
    ConsoleLogger.logger.wtf('What a terrible failure log');
  }
}
