import 'package:appmax/components/PageContent.dart';
import 'package:appmax/components/PageHeader.dart';
import 'package:appmax/pages/Home/HomeContent.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      child: Stack(
        children: <Widget>[
          PageHeader(),
          PageContent(
            pageContent: ContentPage(),
          )
        ],
      ),
    );
  }

  BottomNavigationBarItem barItemHome() {
    return const BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
    );
  }
}
