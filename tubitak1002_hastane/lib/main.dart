import 'package:flutter/material.dart';
import 'package:tubitak1002_hastane/Home_Page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var Ekran_Bilgisi = MediaQuery.of(context);
    double Yukseklik = Ekran_Bilgisi.size.width;
    double Genislik = Ekran_Bilgisi.size.height;
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(title: Center(
          child: Text("Hastane Proje",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
                shadows: [
                  Shadow(
                      color: Colors.black,
                      blurRadius: 4,
                  )],
            ),
          ),
        ),
        ),
        body: Center(child: Home_Page()),
        bottomNavigationBar: Container(
          height: Yukseklik*0.2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.monitor_heart_outlined, size: 50,color: Colors.black,),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.search, size: 50,color: Colors.black,),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.account_balance_outlined, size: 50,color: Colors.black,),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.settings_applications_outlined, size: 50,color: Colors.black,),
              ),
            ],
          ),
          color: Colors.blue,
        ),
      ),
    );
  }
}
