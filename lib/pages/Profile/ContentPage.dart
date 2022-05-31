import 'package:flutter/material.dart';

class ContentPage extends StatelessWidget {
  const ContentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 24,
        ),
        contentTitulo(),
        contentCard()
      ],
    );
  }
}

Container contentTitulo() {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Your Information",
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 24,
                  color: Colors.black),
            )
          ],
        ),
        IconButton(
          icon: Icon(
            Icons.more_horiz,
            color: Colors.lightBlue[900],
            size: 20,
          ),
          onPressed: () {},
        )
      ],
    ),
    padding: EdgeInsets.symmetric(horizontal: 20),
  );
}

Card contentCard() {
  return Card(
    child: Container(
      alignment: Alignment.topLeft,
      padding: EdgeInsets.all(15),
      child: Column(
        children: <Widget>[
          Column(
            children: <Widget>[
              ...ListTile.divideTiles(
                color: Colors.grey,
                tiles: [
                  ListTile(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    leading: Icon(Icons.my_location),
                    title: Text("Location"),
                    subtitle: Text("Kathmandu"),
                  ),
                  ListTile(
                    leading: Icon(Icons.email),
                    title: Text("Email"),
                    subtitle: Text("sudeptech@gmail.com"),
                  ),
                  ListTile(
                    leading: Icon(Icons.phone),
                    title: Text("Phone"),
                    subtitle: Text("99--99876-56"),
                  ),
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text("About Me"),
                    subtitle: Text(
                        "This is a about me link and you can khow about me in this section."),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    ),
  );
}
