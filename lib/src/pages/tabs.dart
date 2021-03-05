import 'package:flutter/material.dart';
import 'dart:html';

class AboutUs extends StatelessWidget {
  final controller = PageController(initialPage: 1);
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: controller,
      scrollDirection: Axis.horizontal,
      children: [
        Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                children: [Text('TextoPrueba ')],
              )
            ],
          ),
        )
      ],
    );
  }
}

class Home extends StatelessWidget {
  final controller = PageController(initialPage: 1);
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: controller,
      scrollDirection: Axis.horizontal,
      children: [
        RichText(
          text: TextSpan(
            text: 'Hello ',
            style: DefaultTextStyle.of(context).style,
            children: <TextSpan>[
              TextSpan(
                  text: 'bold', style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: ' world!'),
            ],
          ),
        )
      ],
    );
  }
}

class Contacto extends StatelessWidget {
  final controller = PageController(initialPage: 1);
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: controller,
      scrollDirection: Axis.horizontal,
      children: [Text('TextoPrueba ')],
    );
  }
}

class Tabs extends StatelessWidget {
//ctrl + . para convertirlo a un statefull

  final estilo = new TextStyle(fontSize: 25);
  final List<Tab> myTabs = <Tab>[
    Tab(text: 'Home'),
    Tab(text: 'Sobre nosotros'),
    Tab(text: 'Contacto')
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              //Container(
              //width: size.width / 3, //550
              //),

              new Image.asset(
                'electro_industrias_negro.jpg',
                fit: BoxFit.contain,
                height: size.height / 6,
                width: size.width / 3, //240
              ),
              //Container(Contacto)
            ],
          ),
          bottom: TabBar(
            tabs: myTabs,
          ),
          toolbarHeight: 150,
        ),
        body: TabBarView(
          children: [Home(), AboutUs(), Contacto()],
        ),
        //  backgroundColor: Colors.blueGrey[900],
      ),
    );
  }
}