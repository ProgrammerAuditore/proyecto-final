import 'package:appmax/config.dart';
import 'package:appmax/generated/l10n.dart';
import 'package:flutter/material.dart';

class ContactsContent extends StatelessWidget {
  const ContactsContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 24,
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    S.of(context).pageContactsContentTitulo,
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 24,
                        color: Colors.black),
                  ),
                  Text(
                    S.of(context).pageContactsContentSubTitulo,
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 12,
                        color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
          padding: EdgeInsets.symmetric(horizontal: 32),
        ),
        SizedBox(
          height: 16,
        ),
        listaContactos(),
      ],
    );
  }
}

ListView listaContactos() {
  List<String> names = [
    "Carlos Guerrero",
    "Luis Mateos",
    "Alejandro de la parra",
    "Manuel Herrera"
  ];

  return ListView.builder(
    itemBuilder: (context, index) {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 22, vertical: 6),
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Row(
          children: <Widget>[
            CircleAvatar(
              radius: 25,
              backgroundColor: Colors.white,
              child: ClipOval(
                child: Image(image: AssetImage('assets/user.png')),
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    names[index],
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.grey[900]),
                  ),
                  Text(
                    "355-32${index}${index}-33${index}",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Colors.grey[500]),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  S.of(context).pageContactsContentTipo,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.orange),
                ),
                Text(
                  S.of(context).pageContactsContentEstado,
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Colors.grey[500]),
                ),
              ],
            ),
          ],
        ),
      );
    },
    shrinkWrap: true,
    itemCount: 4,
    padding: EdgeInsets.all(0),
    controller: ScrollController(keepScrollOffset: false),
  );
}
