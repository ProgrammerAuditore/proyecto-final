import 'dart:io';
import 'package:appfoodfast/pages/Card/CardPage.dart';
import 'package:appfoodfast/pages/Home/HomePage.dart';
import 'package:appfoodfast/pages/Profile/ProfilePage.dart';
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
  int selectedTab = 0;

  var pages = [
    HomePage(),
    CardPage(),
    ProfilePage()
  ];

  List<BottomNavigationBarItem> pagesContenido = <BottomNavigationBarItem>[
    HomePage().barItemHome(),
    CardPage().barItemCard(),
    ProfilePage().barItemProfile()
  ];

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(38, 81, 158, 1),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedTab,
        selectedItemColor: MyAppConfig.appColorPrimary,
        unselectedItemColor: MyAppConfig.appColorDisable,
        items: pagesContenido,
        onTap: (index) {
          setState(() {
            selectedTab = index;
          });
        },
        showUnselectedLabels: true,
        iconSize: 30,
      ),
      body: IndexedStack(
        index: selectedTab,
        children: pages,
      )
      //pages[selectedTab],
    );
  }
}
