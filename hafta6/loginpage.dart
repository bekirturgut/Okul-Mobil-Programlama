import 'package:flutter/material.dart';

class loginpage extends StatefulWidget {
  loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  final TextEditingController _controllerkullaniciadi = TextEditingController();
  final TextEditingController _controllersifre = TextEditingController();

  String mesaj="";

  void kontrol(){
    setState(() {
      if (_controllerkullaniciadi.text == "Mehmet" &&
          _controllersifre.text == "123456") {
        mesaj="Başarılı";
      } else {
        mesaj = "Başarısız";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var ekranbilgisi = MediaQuery.of(context);
    final double ekrangenisligi = ekranbilgisi.size.width;
    final double ekranyuksekligi = ekranbilgisi.size.height;

    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(ekranyuksekligi / 80),
            child: SizedBox(
              height: ekranyuksekligi / 4,
              child: Image.asset("resimler/kivi.jpg"),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(ekranyuksekligi / 24),
            child: TextField(
              controller: _controllerkullaniciadi,
              decoration: InputDecoration(
                hintText: "Kullanıcı Adı",
                filled: true,
                fillColor: Color.fromRGBO(241, 221, 221, 1),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: ekranyuksekligi / 24,
              right: ekranyuksekligi / 24,
              bottom: ekranyuksekligi / 24,
            ),
            child: TextField(
              controller: _controllersifre,
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Şifre",
                filled: true,
                fillColor: Color.fromRGBO(241, 221, 221, 1),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
            ),
          ),
          SizedBox(
            width: ekrangenisligi / 1.3,
            child: TextButton(
              onPressed: kontrol,
              child: Text(
                "Giriş Yap",
                style: TextStyle(
                  fontSize: ekrangenisligi / 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              style: TextButton.styleFrom(
                backgroundColor: Color.fromRGBO(210, 189, 205, 1),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(ekranyuksekligi / 60),
            child: Text(
              mesaj,
              style: TextStyle(
                color: Colors.red,
                fontSize: ekranyuksekligi / 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
