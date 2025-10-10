import 'package:design/column.dart';
import 'package:design/row.dart';
import 'package:design/stack.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Row / Kolon"),
          backgroundColor: Colors.blue,),
          body:
          // Customstack(flexvalues: [4, 3, 2],
          //     colors: [Colors.yellow, Colors.red, Colors.purple],
          //     labels: ["Sarı", "Kırmızı", "Mor"])

          // Customcolumn(flexvalues: [1, 2, 1],
          //     colors: [Colors.yellow, Colors.red, Colors.purple],
          //     labels: ["Sarı", "Kırmızı", "Siyah"])
        Customrow(flexvalues: [3, 2, 1],
          colors: [Colors.yellow, Colors.red, Colors.purple],
          labels: ["Sarı", "Kırmızı", "Siyah"])
        /*Row(
        children: [
          /*Container(width: ekranGenisligi*0.2,height: 120, color: Colors.red),
        Container(width: ekranGenisligi*0.5,height: 180, color: Colors.yellow),
        Container(width: ekranGenisligi*0.3,height: 60, color: Colors.black),*/
          Expanded(
            flex: 3, // oransal genişlik (1 birim)
            child: Container(
              alignment: Alignment.center,
              height: 120,
              color: Colors.yellow,
              child: Text("Sarı"),
            ),
          ),
          Expanded(
            flex: 2, // 2 katı kadar genişlik
            child: Container(
              height: 180,
              color: Colors.red,
              child: Text("Kırmızı"),
            ),
          ),
          Expanded(
            flex: 1, // 1 birim genişlik
            child: Container(height: 60, color: Colors.black),
          ),
        ],
      ),*/
      ),
    );
  }
}




