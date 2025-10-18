import 'package:flutter/material.dart';

class Gorevekle extends StatefulWidget {
  const Gorevekle({super.key});

  @override
  State<Gorevekle> createState() => _GorevekleState();
}

class _GorevekleState extends State<Gorevekle> {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text("GÖREV EKLEME SAYFA",style: TextStyle(fontSize: 30),),);
  }
}
