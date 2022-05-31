import 'package:appfoodfast/components/PageContent.dart';
import 'package:appfoodfast/components/PageHeader.dart';
import 'package:appfoodfast/pages/Card/ContentPage.dart';
import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      child: 
      Stack(
        children: [ 
          PageHeader(),
          PageContent(
            pageContent: ContentPage(),
          )
        ],
      )
    );
  }

  BottomNavigationBarItem barItemCard() {
    return const BottomNavigationBarItem(
      icon: Icon(Icons.credit_card),
      label: 'Card',
    );
  }
}
