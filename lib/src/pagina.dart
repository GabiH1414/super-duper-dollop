import 'package:eco_blue/src/pages/home_pages.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            // primaryColor: Colors.black,
            //accentColor: Colors.orange,
            //textTheme: TextTheme(bodyText2: TextStyle(color: Colors.white)),
            ),
        home: Center(
          child: HomePage(),
        ));
  }
}
