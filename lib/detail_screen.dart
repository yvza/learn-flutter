import 'dart:developer';

import 'package:first_flutter_test/model/tourism_place.dart';
import 'package:flutter/material.dart';

// Codelab 1
class DetailScreen extends StatelessWidget {
  var informationStyle = TextStyle(fontFamily: 'Oxygen');

  final TourismPlace place;

  DetailScreen({required this.place});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SafeArea(
              child: Stack(
                children: <Widget>[
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back)),
                  Padding(
                    padding: EdgeInsets.only(left: 90.0),
                    child: FavoriteButton(),
                  )
                ],
              ),
            ),
            Image.network(place.imageAsset),
            Container(
              margin: EdgeInsets.only(top: 16.0),
              child: Text(
                place.name,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Staatliches'),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Icon(Icons.calendar_today),
                      SizedBox(height: 8.0),
                      Text(
                        place.openDays,
                        style: informationStyle,
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(Icons.price_check),
                      SizedBox(height: 8.0),
                      Text(place.openTime, style: informationStyle),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(Icons.animation),
                      SizedBox(height: 8.0),
                      Text(place.ticketPrice, style: informationStyle),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                place.description,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16.0, fontFamily: 'Oxygen'),
              ),
            ),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: place.imageUrl.map((url) {
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(url),
                    ),
                  );
                }).toList(),
                // children: [
                //   Padding(
                //     padding: const EdgeInsets.all(5.0),
                //     child: ClipRRect(
                //       borderRadius: BorderRadius.all(Radius.circular(10)),
                //       child: Image.network(
                //         'https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg',
                //       ),
                //     ),
                //   ),
                //   Padding(
                //     padding: const EdgeInsets.all(5.0),
                //     child: ClipRRect(
                //       borderRadius: BorderRadius.all(Radius.circular(10)),
                //       child: Image.network(
                //         'https://media-cdn.tripadvisor.com/media/photo-w/13/f0/22/f6/photo3jpg.jpg',
                //       ),
                //     ),
                //   ),
                //   Padding(
                //     padding: const EdgeInsets.all(5.0),
                //     child: ClipRRect(
                //       borderRadius: BorderRadius.all(Radius.circular(10)),
                //       child: Image.network(
                //         'https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg',
                //       ),
                //     ),
                //   ),
                // ],
              ),
            )
          ],
        ),
      )),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
        print(isFavorite);
      },
    );
  }
}
