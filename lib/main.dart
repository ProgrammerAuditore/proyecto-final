import 'dart:io';
import 'package:appmax/pages/Contacts/ContactsContent.dart';
import 'package:appmax/pages/Contacts/ContactsPage.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:appmax/generated/l10n.dart';
import 'package:appmax/pages/Card/CardPage.dart';
import 'package:appmax/pages/Home/HomePage.dart';
import 'package:appmax/pages/Profile/ProfilePage.dart';
import 'package:flutter/material.dart';
import 'package:appmax/config.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: MyAppConfig.appNavColorPrimary,
      ),
      home: WalletApp(),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        S.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
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
    ContactsPage(),
    ProfilePage()
  ];

  List<BottomNavigationBarItem> pagesContenido = <BottomNavigationBarItem>[
    HomePage().barItemHome(),
    CardPage().barItemCard(),
    ContactsPage().barItemContacts(),
    ProfilePage().barItemProfile()
  ];

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyAppConfig.appColorPrimary,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedTab,
        selectedItemColor: MyAppConfig.appNavColorPrimary,
        unselectedItemColor: MyAppConfig.appNavColorDisable,
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
