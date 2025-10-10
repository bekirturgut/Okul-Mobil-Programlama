import 'package:flutter/material.dart';

class Customrow extends StatelessWidget {
  final List<int> flexvalues;
  final List<Color> colors;
  final List<String> labels;

  const Customrow({
    super.key,
    required this.flexvalues,
    required this.labels,
    required this.colors,
  });

  @override
  Widget build(BuildContext context) {
    double ekranGenisligi = MediaQuery.of(context).size.width;
    double ekranYuksekligi = MediaQuery.of(context).size.height;
    print("Ekran: $ekranGenisligi");
    return Row(
        //mainAxisSize: MainAxisSize.max,
        //mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: ekranGenisligi * 0.3,
            height: 80,
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.red,
              border: Border.all(color: Colors.orange,
                  width: 5),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Align(
              alignment: Alignment.bottomRight,
                child: Text("Kırmızı",style: TextStyle(fontSize: 24,color: Colors.cyan),)),
          ),
          // Spacer(flex:30),
          Container(
            width: ekranGenisligi * 0.2,
            height: 120,
            color: Colors.yellow,
          ),
          //SizedBox(width: 20,height: 10,),
          // Spacer(flex:50),
          //Padding
          Container(
            width: ekranGenisligi * 0.3,
            height: 180,
            color: Colors.purple,
          ),
          // Spacer(flex:20),
          // Expanded(
          //   flex: flexvalues[0],
          //   child: Container(
          //     alignment: Alignment.center,
          //     height: 120,
          //     color: colors[0],
          //     child: Text(labels[0]),
          //   ),
          // ),
          // Expanded(
          //   flex: flexvalues[1],
          //   child: Container(
          //     height: 180,
          //     color: colors[1],
          //     child: Text(labels[1]),
          //   ),
          // ),
          // Expanded(
          //   flex: flexvalues[2],
          //   child: Container(height: 60, color: colors[2], child: Text(labels[2])),
          // ),
        ],
      );
  }
}
