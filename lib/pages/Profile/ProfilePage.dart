import 'package:appfoodfast/components/PageContent.dart';
import 'package:appfoodfast/pages/Profile/ProfileContent.dart';
import 'package:appfoodfast/pages/Profile/ProfileHeader.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      child: Stack(
        children: <Widget>[
          ProfileHeader(),
          PageContent(
            pageContent: ContentPage(),
          )
        ],
      ),
    );
  }

  BottomNavigationBarItem barItemProfile() {
    return const BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
    );
  }
}