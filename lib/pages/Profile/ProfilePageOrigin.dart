import 'package:appfoodfast/pages/Profile/componentes/Avatar.dart';
import 'package:appfoodfast/pages/Profile/componentes/ProfileHeader.dart';
import 'package:appfoodfast/pages/Profile/componentes/UserInfo.dart';
import 'package:flutter/material.dart';

class ProfileOrigin extends StatelessWidget {
  const ProfileOrigin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ProfileHeader(
            avatar: NetworkImage('https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/img%2F6.jpg?alt=media'),
            coverImage: NetworkImage('https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/img%2F6.jpg?alt=media'),
            title: "Ramesh Mana",
            subtitle: "Manager",
            actions: <Widget>[
              MaterialButton(
                color: Colors.white,
                shape: CircleBorder(),
                elevation: 0,
                child: Icon(Icons.edit),
                onPressed: () {},
              )
            ],
          ),
          const SizedBox(height: 10.0),
          UserInfo(),
        ],
      ),
    );
  }

  BottomNavigationBarItem barItemProfile() {
    return const BottomNavigationBarItem(
      icon: Icon(Icons.person_pin),
      label: 'Profile',
    );
  }
}

class PNetworkImage extends StatelessWidget {
  final String? image;
  final BoxFit? fit;
  final double? width, height;
  const PNetworkImage(this.image, {Key? key, this.fit, this.height, this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      image!,
      // placeholder: (context, url) => Center(child: CircularProgressIndicator()),
      // errorWidget: (context, url, error) => Image.asset('assets/placeholder.jpg',fit: BoxFit.cover,),
      fit: fit,
      width: width,
      height: height,
    );
  }
}





