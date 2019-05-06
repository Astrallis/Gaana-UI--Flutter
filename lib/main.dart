import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'wid.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(

        theme: ThemeData(
          accentColor: Color(0xFF1b1b1b),
          primaryColor: Color(0xFF1b1b1b),
        ),
        home: MainWidget());
  }
}
