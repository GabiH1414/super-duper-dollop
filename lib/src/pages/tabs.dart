import 'package:flutter/material.dart';
import 'dart:html';

class AboutUs extends StatelessWidget {
  final controller = PageController(initialPage: 1);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return PageView(
      controller: controller,
      scrollDirection: Axis.horizontal,
      children: [
        Container(
          height: size.height * 0.5,
          width: size.width / 2,
          padding: EdgeInsets.all(50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: RichText(
                            maxLines: 2,
                            text: TextSpan(
                              text:
                                  'Hello TextoPruebaTextoPruebaTextoPruebaTextoPruebaTextoPruebaTextoPruebaTextoPruebaTextoPruebaTextoPruebaTextoPrueba',
                              style: DefaultTextStyle.of(context).style,
                              children: <TextSpan>[
                                TextSpan(
                                    text:
                                        'bold TextoPruebaTextoPruebaTextoPruebaTextoPruebaTextoPruebaTextoPruebaTextoPruebaTextoPruebaTextoPruebaTextoPrueba',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                TextSpan(text: ' world!'),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                        height: size.height / 5,
                        width: size.width / 5,
                        child: Expanded(
                          child: Image.asset(
                            'imageprueba.jpg',
                            fit: BoxFit.contain,
                            height: 240,
                            width: 240, //240),
                          ),
                        )),
                  )
                ],
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
