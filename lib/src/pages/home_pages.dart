import 'package:eco_blue/src/pages/tabs.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    SizedBox(
      width: 480,
    );
    return Scaffold(
      body: SizedBox(
        child: Tabs(),
      ),
    );
  }
}
