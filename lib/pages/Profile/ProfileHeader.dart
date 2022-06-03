import 'package:appmax/config.dart';
import 'package:appmax/generated/l10n.dart';
import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "\Victor J. Maximo",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.notifications,
                      color: Colors.lightBlue[100],
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.white,
                      child: ClipOval(
                        child: Image(image: AssetImage('assets/profile.jpg')),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Text(
            S.of(context).pageProfileContentCuenta,
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16,
                color: Colors.blue[100]),
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              OpcMenu( icono: Icons.exit_to_app, titulo: S.of(context).pageContactsContentSalir),
              OpcMenu( icono: Icons.help, titulo: S.of(context).pageContactsContentAyuda),
              OpcMenu( icono: Icons.chat, titulo: S.of(context).pageContactsContentAsistencia),
            ],
          )
        ],
      ),
    );
  }
}

class OpcMenu extends StatelessWidget {
  final IconData icono;
  final String titulo;

  const OpcMenu( 
    {Key? key, 
      this.icono = Icons.home,
      this.titulo = "Nuevo",
    }) 
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                color: Color.fromRGBO(243, 245, 248, 1),
                borderRadius: BorderRadius.all(Radius.circular(18))),
            child: Icon(
              icono,
              color: MyAppConfig.appColorIconsPrimary,
              size: 30,
            ),
            padding: EdgeInsets.all(12),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            titulo,
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 14,
                color: Colors.blue[100]),
          ),
        ],
      ),
    );
  }
}
