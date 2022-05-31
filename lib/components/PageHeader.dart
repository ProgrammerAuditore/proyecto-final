import 'package:appfoodfast/components/OptionPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:appfoodfast/generated/l10n.dart';

class PageHeader extends StatelessWidget {
  const PageHeader({Key? key}) : super(key: key);

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
                "\$2589.90",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 36,
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
                        child: Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/img%2F6.jpg?alt=media',
                          fit: BoxFit.contain,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Text(
            S.of(context).componentsPageHeaderTitulo,
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16,
                color: Colors.blue[100]),
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              OptionPage( icono: Icons.date_range, titulo: S.of(context).componentsPageHeaderOpcPageSend),
              OptionPage( icono: Icons.public, titulo:  S.of(context).componentsPageHeaderOpcPageRequest),
              OptionPage( icono: Icons.attach_money, titulo:  S.of(context).componentsPageHeaderOpcPageLoan),
              OptionPage( icono: Icons.trending_down, titulo:  S.of(context).componentsPageHeaderOpcPageTopup),
            ],
          )
        ],
      ),
    );
  }
}
