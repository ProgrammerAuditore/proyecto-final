import 'dart:io';
import 'package:appfoodfast/nav_item/About/About.dart';
import 'package:appfoodfast/nav_item/Home/Home.dart';
import 'package:appfoodfast/nav_item/Sucursal/Sucursal.dart';
import 'package:flutter/material.dart';
import 'package:appfoodfast/config.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: MyAppConfig.appColorPrimary,
      ),
      home: MyPageMain()
    );
  }
}

class MyPageMain extends StatefulWidget {
  MyPageMain({Key? key}) : super(key: key);

  @override
  State<MyPageMain> createState() => _MyPageMainState();
}

class _MyPageMainState extends State<MyPageMain> {
  int indexBarItem = 0;

  List<Widget> contenidosNavItem = const <Widget>[
    Home(),
    Sucursal(),
    About(),
  ];

  List<BottomNavigationBarItem> opcionesNavItem = <BottomNavigationBarItem>[
    Home().barItemHome(),
    Sucursal().barItemSucursal(),
    About().barItemAbout(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: MyAppConfig.appTitulo,
      ),
      body: Center(
          child: IndexedStack(
        index: indexBarItem,
        children: contenidosNavItem,
      )),
      bottomNavigationBar: BottomNavigationBar(
        items: opcionesNavItem,
        currentIndex: indexBarItem,
        selectedItemColor: MyAppConfig.appColorPrimary,
        unselectedItemColor: MyAppConfig.appColorDisable,
        onTap: (int index) {
          indexBarItem = index;
          setState(() {});
        },
      ),
    );
  }
}
