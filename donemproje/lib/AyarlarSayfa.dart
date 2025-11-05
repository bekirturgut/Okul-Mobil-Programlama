import 'package:flutter/material.dart';

class Ayarlarsayfa extends StatefulWidget {
  const Ayarlarsayfa({super.key});

  @override
  State<Ayarlarsayfa> createState() => _AyarlarsayfaState();
}

class _AyarlarsayfaState extends State<Ayarlarsayfa> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("AYARLAR SAYFA",style: TextStyle(fontSize: 30),),);
  }
}
