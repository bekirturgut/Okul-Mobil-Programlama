import 'package:donemproje/Anasayfa.dart';
import 'package:donemproje/AramaSayfa.dart';
import 'package:donemproje/AyarlarSayfa.dart';
import 'package:donemproje/GorevEkle.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextStyle Yazi = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 24,
    shadows: [Shadow(color: Colors.black, blurRadius: 5)],
  );

  int _seciliIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _seciliIndex = index;
    });
  }

  static const List<Widget> _sayfaListesi = <Widget>[
    Anasayfa(),
    Gorevekle(),
    Aramasayfa(),
    Ayarlarsayfa(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(title: Text('TO DO', style: Yazi)),
        body: _sayfaListesi[_seciliIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Anasayfa'),
            BottomNavigationBarItem(icon: Icon(Icons.add_circle_outline), label: 'Görev Ekle'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Arama'),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Ayarlar',
            ),
          ],
          currentIndex:
              _seciliIndex, // Hangi öğenin şu anda seçili olduğunu belirtir
          selectedItemColor: Colors.indigo, // Seçili öğenin rengi
          onTap:
              _onItemTapped, // Menü öğesine tıklandığında çalışacak fonksiyon
        ),
      ),
    );
  }
}
