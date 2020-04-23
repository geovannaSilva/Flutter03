import 'package:bytebank2/database/app_database.dart';
import 'package:flutter/material.dart';
import 'package:bytebank2/screens/dashboard.dart';

import 'models/contact.dart';

void main() {
  runApp(Bytebank2());
}

class Bytebank2 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            primaryColor: Colors.green[900],
            accentColor: Colors.blueAccent[700],
            buttonTheme: ButtonThemeData(
              buttonColor: Colors.blueAccent[700],
              textTheme: ButtonTextTheme.primary,
            )
        ),
      home: Dashboard(),
    );

  }
}


