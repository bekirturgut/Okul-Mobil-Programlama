import 'package:flutter/material.dart';

class Aramasayfa extends StatefulWidget {
  const Aramasayfa({super.key});

  @override
  State<Aramasayfa> createState() => _AramasayfaState();
}

class _AramasayfaState extends State<Aramasayfa> {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text("ARAMA SAYFA",style: TextStyle(fontSize: 30),),);
  }
}
