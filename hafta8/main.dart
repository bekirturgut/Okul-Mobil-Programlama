import 'package:flutter/material.dart';
import 'package:hafta10/gesture.dart';
import 'package:hafta10/webview.dart';

void main() {
  runApp(const hafta10());
}

class hafta10 extends StatefulWidget {
  const hafta10({super.key});

  @override
  State<hafta10> createState() => _hafta10State();
}

class _hafta10State extends State<hafta10> {
  bool aramayapilsinmi = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black12,
            leading: IconButton(
              tooltip: "Menu Butonu",
              onPressed: () {
                print("Menu butonuna tıklandı");
              },
              icon: Icon(Icons.dehaze),
            ),
            title: aramayapilsinmi
                ? TextField(
                    decoration: InputDecoration(
                      hintText: "Arama için birşey yaz",
                    ),
                    onChanged: (aramadegeri) {
                      print("Arama: $aramadegeri");
                    },
                  )
                : Column(
                    children: [
                      Text("Sayfalar", style: TextStyle(fontSize: 16)),
                      Text("Alt sayfalar", style: TextStyle(fontSize: 12)),
                    ],
                  ),
            actions: [
              TextButton(
                onPressed: () {},
                child: Text("Çıkış", style: TextStyle(color: Colors.red)),
              ),
              aramayapilsinmi
                  ? IconButton(
                  onPressed: (){
                    setState(() {
                      aramayapilsinmi = false;
                    });
                  },
                  icon: Icon(Icons.cancel))
                  : IconButton(
                      tooltip: "Arama",
                      onPressed: () {
                        setState(() {
                          aramayapilsinmi = true;
                        });
                      },
                      icon: Icon(Icons.search),
                    ),
              IconButton(
                tooltip: "Bilgi",
                onPressed: () {
                  print("Bilgi Butonuna Tıklandı");
                },
                icon: Icon(Icons.info_outline),
              ),
              PopupMenuButton(
                child: Icon(Icons.more_vert),
                itemBuilder: (context) => [
                  PopupMenuItem(value: 1, child: Text("Sil")),
                  PopupMenuItem(value: 2, child: Text("Güncelle")),
                ],
                onCanceled: () {
                  print("Seçim yapılmadı");
                },
                onSelected: (menuItem) {
                  if (menuItem == 1) {
                    print("Sil seçildi");
                  }
                  if (menuItem == 2) {
                    print("Güncelle seçildi");
                  }
                },
              ),
            ],
            bottom: TabBar(tabs: [
              Tab(text: "Webview",),
              Tab(icon: Icon(Icons.looks_two),)
            ]
            ),
          ),
          body: TabBarView(children: [webview(),gesture()]),
        ),
      ),
    );
  }
}
