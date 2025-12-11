import 'package:flutter/material.dart';

class gesture extends StatefulWidget {
  const gesture({super.key});

  @override
  State<gesture> createState() => _gestureState();
}

class _gestureState extends State<gesture> {
  var tfcontrol = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text("Tek Tıklandı")));
        },
        onDoubleTap: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                "İnternet bağlantısı sağlanamadı",
                style: TextStyle(color: Colors.red),
              ),
              backgroundColor: Colors.white,
              duration: Duration(seconds: 7),
              action: SnackBarAction(
                label: "Tekrar Dene",
                textColor: Colors.red,
                onPressed: () {},
              ),
            ),
          );
        },
        onLongPress: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text("Dikkat", style: TextStyle(color: Colors.white)),
                backgroundColor: Colors.indigoAccent,
                content: Column(
                  children: [
                    Text("İçerik", style: TextStyle(color: Colors.white)),
                    TextField(
                      controller: tfcontrol,
                      maxLength: 30,
                      decoration: InputDecoration(labelText: "Veri"),
                    ),
                  ],
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("İptal"),
                  ),
                  TextButton(
                    onPressed: () {
                      String alinanveri = tfcontrol.text;
                      print("Veri: $alinanveri");
                      tfcontrol.text = "";
                    },
                    child: Text("Tamam"),
                  ),
                ],
              );
            },
          );
        },
        child: Center(
          child: SizedBox(
            width: 300,
            height: 50,
            child: Card(
              color: Colors.deepPurple,
              shadowColor: Colors.deepPurpleAccent,
              elevation: 10,
              child: Center(
                child: Text(
                  "Tek, çift veya uzun tıkla",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
