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
                "\Victor Jesus Maximo Abundio",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
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
            "Basic Account",
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16,
                color: Colors.blue[100]),
          ),
          SizedBox(
            height: 24,
          ),
        ],
      ),
    );
  }
}
