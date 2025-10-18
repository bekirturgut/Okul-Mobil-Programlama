import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String mesaj = "";
  int tiklama = 0;
  final TextEditingController _textcontrollerKullanici = TextEditingController();
  final TextEditingController _textcontrollerSifre = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var ekran_bilgisi = MediaQuery.of(context);
    final double genislik = ekran_bilgisi.size.width;
    final double yukseklik = ekran_bilgisi.size.height;
    return Center(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Tıklama Sayısı : $tiklama", style: TextStyle(fontSize: 30)),
            Column(
              children: [
                Image(image: AssetImage("assets/1.jpg"), width: yukseklik * 0.1),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(16),
                    border: BoxBorder.all(color: Colors.black),
                  ),
                  width: genislik * 0.5,
                  height: yukseklik * 0.05,
                  child: TextField(
                    controller: _textcontrollerKullanici,
                    obscureText: false,
                    decoration: InputDecoration(hintText: "Kullanıcı Adı Giriniz"),
                    autofocus: true,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(16),
                    border: BoxBorder.all(color: Colors.black),
                  ),
                  width: genislik * 0.5,
                  height: yukseklik * 0.05,
                  child: TextField(
                    controller: _textcontrollerSifre,
                    obscureText: true,
                    decoration: InputDecoration(hintText: "Şifre Giriniz"),
                  ),
                ),
                ElevatedButton(
                  onPressed: () => {
                    mesaj = "Giriş Yapıldı",
                    tiklama++,
                    print("KULLANICI ADİİİİ :$_textcontrollerKullanici.toString()"),
                    print("ŞİFREEEEEE : $_textcontrollerSifre.toString()"),
                    if(_textcontrollerSifre.text == "12345" && _textcontrollerKullanici.text == "12345"){
                      print("GİRİŞ BAŞARILI"),
                      mesaj = "Giriş Başarılı"
                    }
                    else{
                      print("GİRİŞ BAŞARISIZ"),
                      mesaj = "Giriş Başarısız"
                    },
                    setState(() {}),
                  },
                  child: Text("Giriş"),
                ),
                ElevatedButton(
                  onPressed: () => {
                    tiklama++,
                    if(_textcontrollerSifre.text == "12345" && _textcontrollerKullanici.text == "12345"){
                      print("ÇIKIŞ BAŞARILI"),
                      mesaj = "Çıkış Başarılı"
                    }
                    else{
                      print("ÇIKIŞ BAŞARISIZ"),
                      mesaj = "Çıkış Başarısız"
                    },
                    print("KULLANICI ADİİİİ :$_textcontrollerKullanici.toString()"),
                    print("ŞİFREEEEEE : $_textcontrollerSifre.toString()"),
                    setState(() {}),
                  },
                  child: Text("Çıkış"),
                ),
              ],
            ),
            Text(mesaj, style: TextStyle(fontSize: 50)),
          ],
        ),
      ),
    );
  }
}
