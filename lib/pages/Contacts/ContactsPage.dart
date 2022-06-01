import 'package:appfoodfast/components/PageContent.dart';
import 'package:appfoodfast/components/PageHeader.dart';
import 'package:appfoodfast/pages/Contacts/ContactsContent.dart';
import 'package:flutter/material.dart';

class ContactsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      child: Stack(
        children: <Widget>[
          PageHeader(),
          PageContent(
            pageContent: ContactsContent(),
          )
        ],
      ),
    );
  }

  BottomNavigationBarItem barItemContacts() {
    return const BottomNavigationBarItem(
      icon: Icon(Icons.contact_page),
      label: 'Contacts',
    );
  }
}
