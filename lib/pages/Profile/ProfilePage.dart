import 'package:appmax/components/PageContent.dart';
import 'package:appmax/pages/Profile/ProfileContent.dart';
import 'package:appmax/pages/Profile/ProfileHeader.dart';
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
      icon: Icon(Icons.person_pin),
      label: 'Profile',
    );
  }
}