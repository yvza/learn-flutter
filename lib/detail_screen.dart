import 'package:flutter/material.dart';

// Codelab 1
class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset('images/top.jpg'),
            Container(
              margin: EdgeInsets.only(top: 16.0),
              child: Text(
                'Best Switzerland View',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
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
                      Text('We Are Open'),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(Icons.price_check),
                      SizedBox(height: 8.0),
                      Text('Cheaper than last year!'),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(Icons.animation),
                      SizedBox(height: 8.0),
                      Text('Astrazeneca Accepted'),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Switzerland berlokasi di pusat Eropa Barat dianugerahi tidak hanya keindahan alamnya juga kekayaan budaya dan taraf hidup yang tinggi.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: Image.network(
                        'https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: Image.network(
                        'https://media-cdn.tripadvisor.com/media/photo-w/13/f0/22/f6/photo3jpg.jpg',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: Image.network(
                        'https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg',
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
