import 'package:flutter/material.dart';

void main() {
  runApp(const widgetislemer());
}

class widgetislemer extends StatefulWidget {
  const widgetislemer({super.key});

  @override
  State<widgetislemer> createState() => _widgetislemerState();
}

class _widgetislemerState extends State<widgetislemer> {
  var tfcontroller = TextEditingController();
  String gelensayi = "";
  double slidersayi = 50.0;
  List<int> sayilar = [20, 40, 50, 60, 80, 99];
  int secilendeger = 50;
  bool switchdeger = false;
  var toggledurumlar = [false, true, false];
  int? radiodeger = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Widget işlemler")),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  keyboardType: TextInputType.datetime,
                  maxLength: 2,
                  style: TextStyle(color: Colors.amber, fontSize: 28),
                  controller: tfcontroller,
                  decoration: InputDecoration(
                    hintText: "Sayı giriniz",
                    hintStyle: TextStyle(color: Colors.red, fontSize: 28),
                    filled: true,
                    fillColor: Colors.black12,
                    prefixIcon: Icon(Icons.numbers),
                    labelText: "Sayi girişi",
                    labelStyle: TextStyle(color: Colors.black, fontSize: 24),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextButton(
                        child: Text(
                          "Sayiyi al",
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {
                          setState(() {
                            gelensayi = tfcontroller.text;
                          });
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.orangeAccent,
                          shadowColor: Colors.black,
                          elevation: 10,
                          side: BorderSide(color: Colors.red),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        child: Text(
                          "Sayiyi al",
                          style: TextStyle(color: Colors.black),
                        ),
                        onPressed: () {
                          setState(() {
                            gelensayi = tfcontroller.text;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepOrange,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                "Girilen Sayi: $gelensayi ",
                style: TextStyle(
                  color: Colors.blue,
                  backgroundColor: Colors.black54,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Visibility(
                visible: switchdeger,
                child: Slider(
                  min: 0.0,
                  max: 99.0,
                  value: slidersayi,
                  onChanged: (double i) {
                    setState(() {
                      slidersayi = i;
                      gelensayi = i.toInt().toString();
                    });
                  },
                ),
              ),
              DropdownButton<int>(
                value: secilendeger,
                items: sayilar
                    .map(
                      (sayi) => DropdownMenuItem<int>(
                        value: sayi,
                        child: Text(
                          sayi.toString(),
                          style: TextStyle(
                            color: Colors.deepOrangeAccent,
                            fontSize: 28,
                          ),
                        ),
                      ),
                    )
                    .toList(),
                onChanged: (int? yenideger) {
                  setState(() {
                    secilendeger = yenideger!;
                    gelensayi = secilendeger.toString();
                    slidersayi = secilendeger.toDouble();
                  });
                },
              ),
              Switch(
                value: switchdeger,
                activeTrackColor: Colors.green,
                activeThumbColor: Colors.blue,
                inactiveTrackColor: Colors.red,
                inactiveThumbColor: Colors.yellow,
                onChanged: (bool veri) {
                  setState(() {
                    switchdeger = veri;
                  });
                },
              ),
              ToggleButtons(
                children: [
                  Icon(Icons.looks_one),
                  Icon(Icons.looks_two),
                  Icon(Icons.looks_3),
                ],
                color: Colors.green,
                selectedColor: Colors.red,
                isSelected: toggledurumlar,
                onPressed: (int secilenindeks) {
                  setState(() {
                    toggledurumlar[secilenindeks] =
                        !toggledurumlar[secilenindeks];
                  });
                },
              ),
              RadioGroup(
                groupValue: radiodeger,
                onChanged: (int? val) {
                  setState(() {
                    radiodeger = val;
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: RadioListTile(
                        value: 1,
                        title: Text("Kadın"),
                        activeColor: Colors.red,
                      ),
                    ),
                    Expanded(
                      child: RadioListTile(
                        value: 2,
                        title: Text("Erkek"),
                        activeColor: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
            onPressed: (){
              setState(() {
              gelensayi = tfcontroller.text;
            });},
            icon: Icon(Icons.add),
            backgroundColor: Colors.orangeAccent,
            foregroundColor: Colors.black54,
            label: Text("FAB")),
      ),
    );
  }
}
