import 'package:flutter/material.dart';
import 'package:giris_sayfasi/loginpage.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false, 
      home: Scaffold(
        appBar: AppBar(
          title: Text("Giriş Sayfası"),
          backgroundColor: Color.fromRGBO(204, 0, 204, 0.5),
        ),
        body: loginpage(),
      )));
}
