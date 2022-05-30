import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: OrientationBuilder(
        builder: (context, orientation) {
          return GridView.count(
            // Crea una grid con 2 columnas en modo portrait o 3 columnas en
            // modo landscape.
            crossAxisCount: orientation == Orientation.portrait ? 1 : 2,
            // Genera 100 Widgets que muestran su índice en la Lista
            children: [
              Text("Test"),
            ],
          );
        },
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
