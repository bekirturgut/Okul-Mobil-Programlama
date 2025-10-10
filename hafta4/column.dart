import 'package:design/row.dart';
import 'package:flutter/material.dart';

class Customcolumn extends StatelessWidget {
  final List<int> flexvalues;
  final List<Color> colors;
  final List<String> labels;

  const Customcolumn({
    super.key,
    required this.flexvalues,
    required this.labels,
    required this.colors,
  });

  @override
  Widget build(BuildContext context) {
    double ekranGenisligi = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          alignment: Alignment.center,
          width: ekranGenisligi * 0.2,
          height: 120,
          color: Colors.red,
          child: Text("Kırmızı"),
        ),
        Container(
          alignment: Alignment.center,
          width: ekranGenisligi * 0.5,
          height: 180,
          color: Colors.yellow,
          child: Text("Sarı"),
        ),
        // Customrow(flexvalues: [3, 2, 1],
        //   colors: [Colors.yellow, Colors.red, Colors.purple],
        //   labels: ["Sarı", "Kırmızı", "Siyah"]),
        Container(
          alignment: Alignment.center,
          width: ekranGenisligi * 0.3,
          height: 60,
          color: Colors.purple,
          child: Text("Mor"),
        ),
        // Expanded(
        //   flex: flexvalues[0], // oransal genişlik (1 birim)
        //   child: Container(
        //     width: 120,
        //     color: colors[0],
        //     alignment: Alignment.center,
        //     child: Text(labels[0]),
        //   ),
        // ),
        // Expanded(
        //   flex: flexvalues[1], // 2 katı kadar genişlik
        //   child: Container(
        //     width: 180,
        //     color: colors[1],
        //     alignment: Alignment.center,
        //     child: Text(labels[1]),
        //   ),
        // ),
        // Expanded(
        //   flex: flexvalues[2], // 1 birim genişlik
        //   child: Container(width: 60,
        //       color: colors[2],
        //     alignment: Alignment.center,
        //     child: Text(labels[2]),),
        // ),
      ],
    );
  }
}
