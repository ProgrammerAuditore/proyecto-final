import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Page About'),
    );
  }

  BottomNavigationBarItem barItemAbout() {
    return BottomNavigationBarItem(
      icon: Icon(Icons.contact_page_outlined),
      label: 'About',
    );
  }
}
