import 'package:appfoodfast/pages/Card/componentes/DragScrollSheet.dart';
import 'package:appfoodfast/pages/Card/componentes/PageHeader.dart';
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
          DragScrollSheet(),
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
