import 'dart:io';
import 'package:appfoodfast/nav_item/About/About.dart';
import 'package:appfoodfast/nav_item/Home/Home.dart';
import 'package:appfoodfast/nav_item/Sucursal/Sucursal.dart';
import 'package:appfoodfast/screens/card_page.dart';
import 'package:appfoodfast/screens/page_home.dart';
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
      home: WalletApp(),
    );
  }
}

class WalletApp extends StatefulWidget {
  @override
  _WalletAppState createState() => _WalletAppState();
}

class _WalletAppState extends State<WalletApp> {
  var screens = [
    HomePage(),
    CardPage(),
  ];

  int selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(38, 81, 158, 1),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.credit_card), label: 'Card'),
        ],
        onTap: (index) {
          setState(() {
            selectedTab = index;
          });
        },
        showUnselectedLabels: true,
        iconSize: 30,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        elevation: 0,
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: screens[selectedTab],
    );
  }
}

// ==== TESTING

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
