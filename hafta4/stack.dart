import 'package:flutter/material.dart';

class Customstack extends StatelessWidget {
  final List<int> flexvalues;
  final List<Color> colors;
  final List<String> labels;

  const Customstack({
    super.key,
    required this.flexvalues,
    required this.labels,
    required this.colors,
  });

  @override
  Widget build(BuildContext context) {
    double ekranGenisligi = MediaQuery.of(context).size.width;
    double ekranyuksekligi = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Container(
          alignment: Alignment.bottomCenter,
          width: ekranGenisligi * flexvalues[0]/10,
          height: ekranyuksekligi * flexvalues[0]/10,
          color: Colors.red,
          child: Text("Kırmızı", style: TextStyle(fontSize: 48),),
        ),
        Container(
          alignment: Alignment.bottomCenter,
          width: ekranGenisligi * flexvalues[1]/10,
          height: ekranyuksekligi * flexvalues[1]/10,
          color: Colors.yellow,
          child: Text("Sarı", style: TextStyle(fontSize: 32),),
        ),
        Container(
          alignment: Alignment.center,
          width: ekranGenisligi * flexvalues[2]/10,
          height: ekranyuksekligi * flexvalues[2]/10,
          color: Colors.purple,
          child: Text("Mor",style: TextStyle(fontSize: 24),),
        ),
      ],
    );
  }
}
