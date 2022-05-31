import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  BottomNavigationBarItem barItemProfile() {
    return const BottomNavigationBarItem(
      icon: Icon(Icons.person_pin),
      label: 'Profile',
    );
  }
}

