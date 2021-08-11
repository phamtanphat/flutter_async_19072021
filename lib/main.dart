import 'package:flutter/material.dart';
import 'package:flutter_async_19072021/future_page.dart';
import 'package:flutter_async_19072021/stream_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: StreamPage(),
    );
  }
}