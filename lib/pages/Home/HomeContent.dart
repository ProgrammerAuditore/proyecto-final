import 'package:appfoodfast/config.dart';
import 'package:appfoodfast/generated/l10n.dart';
import 'package:flutter/material.dart';

class ContentPage extends StatelessWidget {
  const ContentPage({Key? key}) : super(key: key);

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
                            Text(
                              S.of(context).pageHomeContentTitulo,
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 18,
                                  color: Colors.black),
                            ),
                            Text(
                              S.of(context).pageHomeContentTituloOpc,
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                  color: Colors.grey[800]),
                            )
                          ],
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 32),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            children: <Widget>[
                              Container(
                                child: Text(
                                  S.of(context).pageHomeContentTituloBtnOpc,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                      color: Colors.blue),
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey[500]!,
                                          blurRadius: 10.0,
                                          spreadRadius: 4.5)
                                    ]),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 10),
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    CircleAvatar(
                                      radius: 8,
                                      backgroundColor: Colors.green,
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      S.of(context).pageHomeContentTituloEstado1,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 14,
                                          color: Colors.blue),
                                    ),
                                  ],
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey[200]!,
                                          blurRadius: 10.0,
                                          spreadRadius: 4.5)
                                    ]),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    CircleAvatar(
                                      radius: 8,
                                      backgroundColor: Colors.orange,
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      S.of(context).pageHomeContentTituloEstado2,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 14,
                                          color: Colors.blue),
                                    ),
                                  ],
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey[200]!,
                                          blurRadius: 10.0,
                                          spreadRadius: 4.5)
                                    ]),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                              )
                            ],
                          ),
                        ),
                      SizedBox(
                        height: 16,
                      ),
                      Container(
                        child: Text(
                          S.of(context).pageHomeContentHoy,
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              color: Colors.grey[500]),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 32),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      transaccionesHoy(),
                      SizedBox(
                        height: 16,
                      ),
                      Container(
                        child: Text(
                          S.of(context).pageHomeContentAyer,
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              color: Colors.grey[500]),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 32),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      operacionesAyer()
                      ,
                    ],
                  );
  }
}

ListView transaccionesHoy(){
  return ListView.builder(
    itemBuilder: (context, index) {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 22, vertical: 6),
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: Colors.white
        ),
        child: Row(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.all(
                      Radius.circular(18))),
              child: Icon(
                Icons.date_range,
                color: MyAppConfig.appColorSecondary,
              ),
              padding: EdgeInsets.all(12),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Payroll",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.grey[900]),
                  ),
                  Text(
                    S.of(context).pageHomeContentOperacionTitulo,
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Colors.grey[500]),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text(
                  "+\$2,500.42",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.lightGreen),
                ),
                Text(
                  "15 Feb",
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
    itemCount: 2,
    padding: EdgeInsets.all(0),
    controller: ScrollController(keepScrollOffset: false),
  );
}

ListView operacionesAyer(){
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
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.all(
                      Radius.circular(18))),
              child: Icon(
                Icons.airplane_ticket_sharp,
                color: MyAppConfig.appColorSecondary,
              ),
              padding: EdgeInsets.all(12),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Max Airplane",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.grey[900]),
                  ),
                  Text(
                    S.of(context).pageHomeContentOperacionTitulo,
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Colors.grey[500]),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text(
                  "-\$1840.52",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.orange),
                ),
                Text(
                  "26 Jan",
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