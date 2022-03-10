import 'package:flutter/material.dart';

// Codelab 1
class DetailScreen extends StatelessWidget {
  var informationStyle = TextStyle(fontFamily: 'Oxygen');

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
                        'We Are Open',
                        style: informationStyle,
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(Icons.price_check),
                      SizedBox(height: 8.0),
                      Text('Cheaper than last year!', style: informationStyle),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(Icons.animation),
                      SizedBox(height: 8.0),
                      Text('Astrazeneca Accepted', style: informationStyle),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Switzerland berlokasi di pusat Eropa Barat dianugerahi tidak hanya keindahan alamnya juga kekayaan budaya dan taraf hidup yang tinggi. Negara yang memiliki nama lengkap Konfederasi Swiss (Switzerland Confederation) ini merupakan negara yang menganut sistem pemerintahan  Republik Federal yang kepala negara dan kepala pemerintahannya adalah Presiden. Presiden Swiss dijabat secara bergantian oleh 7 menteri utama dengan masing-masing masa jabatannya selama 1 tahun. Ketujuh menteri utama tersebut dipilih oleh Majelis Federal (Federal Assembly). Ibukota negara Swiss adalah Kota Bern. Swiss memiliki luas wilayah sebesar 41.277 km2 dengan jumlah penduduk sebanyak 8.236.303 jiwa (estimasi Juli 2017). Swiss memiliki 4 bahasa resmi yaitu bahasa Jerman, bahasa Perancis, bahasa Italia dan bahasa Romande. Hal ini dikarenakan Swiss terdiri dari 4 etnis utama yaitu etnis Jerman, Perancis, Italia dan Romande. Penduduk Swiss mayoritas memeluk agama Katolik Roma (37,3%) dan  Protestan (24,9%).',
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
