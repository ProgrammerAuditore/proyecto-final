import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselDemo extends StatelessWidget {
  CarouselController buttonCarouselController = CarouselController();
  final imagenes = [
    "assets/profile.jpg"];

  @override
  Widget build(BuildContext context) => Column(children: <Widget>[
        CarouselSlider(
          items: imagenes.map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(color: Colors.amber),
                    child: Image(
                      fit: BoxFit.cover,
                      image: AssetImage(i)
                    ),
                );
              },
            );
          }).toList(),
          carouselController: buttonCarouselController,
          options: CarouselOptions(
            autoPlay: false,
            enlargeCenterPage: true,
            viewportFraction: 0.9,
            aspectRatio: 2.0,
            initialPage: 2,
          ),
        ),
        RaisedButton(
          onPressed: () => buttonCarouselController.nextPage(
              duration: Duration(milliseconds: 300), curve: Curves.linear),
          child: Text('→'),
        )
      ]);
}
