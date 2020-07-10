import 'package:flutter/material.dart';
import 'dart:developer';
import 'package:logger_flutter/logger.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var rafi = "debug message";

  LoggerClass loggerClass = new LoggerClass();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Logger'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Debug in Console Print',
              style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint(rafi);

          log('debug: $rafi');
          log('debug', name: 'debug message');

          loggerClass.logger.v("This is verbose");
          loggerClass.logger.d("This is a debug message");
          loggerClass.logger.i("This is info, should be used for public calls");
          loggerClass.logger.w("This might become a warning message");
          loggerClass.logger.e("Error!!!! Something bad has happened");
          loggerClass.logger.wtf("What a terrible failure log");
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
