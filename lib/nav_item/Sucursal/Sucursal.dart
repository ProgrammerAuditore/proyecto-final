import 'package:flutter/material.dart';

class Sucursal extends StatelessWidget {
  const Sucursal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Sucursal'),
    );
  }

  BottomNavigationBarItem barItemSucursal() {
    return BottomNavigationBarItem(
      icon: Icon(Icons.place_rounded), 
      label: 'Sucursal'
    );
  }
}
