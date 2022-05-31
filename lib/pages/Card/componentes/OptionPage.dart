import 'package:flutter/material.dart';

class OptionPage extends StatelessWidget {
  final IconData icono;
  final String titulo;

  const OptionPage( 
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
              color: Colors.blue[900],
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
