import 'package:appmax/config.dart';
import 'package:appmax/generated/l10n.dart';
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
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              S.of(context).pageCardContentTitulo,
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 24,
                                  color: Colors.black),
                            ),
                            Text(
                              S.of(context).pageCardContentSubTitulo,
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 12,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.more_horiz,
                            color: MyAppConfig.appColorPrimary,
                            size: 20,
                          ),
                          onPressed: (){},
                        )
                      ],
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 20),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 32),
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: Text(
                            S.of(context).pageCardContentCardPhysicalTitulo,
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 14,
                                color: MyAppConfig.appColorSecondary),
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
                          child: Text(
                            S.of(context).pageCardContentCardVirtualTitulo,
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 14,
                                color: Colors.grey[500]),
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
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 32),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color.fromRGBO(35, 60, 103, 1),
                      ),
                      padding: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              CircleAvatar(
                                radius: 16,
                                backgroundColor:
                                    Color.fromRGBO(50, 172, 121, 1),
                                child: Icon(
                                  Icons.check,
                                  color: Colors.white,
                                  size: 24,
                                ),
                              ),
                              Text(
                                S.of(context).pageCardContentCardPhysicalTipo,
                                style: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    fontSize: 28,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w900),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 32,
                          ),
                          Text(
                            "**** **** **** 4567",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                letterSpacing: 2.0),
                          ),
                          SizedBox(
                            height: 32,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    S.of(context).pageCardContentCardPhysicalEstado,
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: MyAppConfig.appColorSecondary,
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: 2.0),
                                  ),
                                  Text(
                                    "Amain seif",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.grey[100],
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: 2.0),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    S.of(context).pageCardContentCardPhysicalExpires,
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: MyAppConfig.appColorSecondary,
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: 2.0),
                                  ),
                                  Text(
                                    "8/22",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.grey[100],
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: 2.0),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "CVV",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: MyAppConfig.appColorSecondary,
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: 2.0),
                                  ),
                                  Text(
                                    "842",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.grey[100],
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: 2.0),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      )),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    child: Text(
                      S.of(context).pageCardContentCardConfig,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: Colors.black),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 32),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey[100]!,
                              spreadRadius: 10.0,
                              blurRadius: 4.5)
                        ]),
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                    margin: EdgeInsets.symmetric(horizontal: 32),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.wifi_tethering,size: 20,
                              color: MyAppConfig.appColorPrimary,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              S.of(context).pageCardContentCardConfigConectarPagos,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: MyAppConfig.appColorSecondary),
                            )
                          ],
                        ),
                        Switch(
                          value: true,
                          activeColor: Color.fromRGBO(50, 172, 121, 1),
                          onChanged: (_) {},
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey[100]!,
                              spreadRadius: 10.0,
                              blurRadius: 4.5)
                        ]),
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                    margin: EdgeInsets.symmetric(horizontal: 32),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.credit_card,
                              color: MyAppConfig.appColorPrimary,
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            Text(
                              S.of(context).pageCardContentCardConfigPagosEnLinea,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                  color: MyAppConfig.appColorSecondary),
                            )
                          ],
                        ),
                        Switch(
                          value: false,
                          activeColor: Color.fromRGBO(50, 172, 121, 1),
                          onChanged: (_) {},
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey[100]!,
                              spreadRadius: 10.0,
                              blurRadius: 4.5)
                        ]),
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                    margin: EdgeInsets.symmetric(horizontal: 32),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.mobile_screen_share,
                              color: MyAppConfig.appColorPrimary,
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            Text(
                              S.of(context).pageCardContentCardConfigATM,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                  color: MyAppConfig.appColorSecondary),
                            )
                          ],
                        ),
                        Switch(
                          value: true,
                          activeColor: Color.fromRGBO(50, 172, 121, 1),
                          onChanged: (_) {},
                        )
                      ],
                    ),
                  )
                ],
              );
  }
}