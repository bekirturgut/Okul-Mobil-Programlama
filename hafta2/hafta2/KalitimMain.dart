// main.dart
// Programın başlangıç dosyası

import 'Kalitim_Arac.dart';
import 'Kalitim_Otomobil.dart';
import 'KalitimElektirkliOtomobil.dart';

void main() {
  var arac = Arac("Generic", "X", 180);
  arac.calistir();
  arac.hizlan(30);
  arac.bilgiYazdir();
  arac.dur();
  print("---------------");

  var otomobil = Otomobil("BMW", "320i", 240, 4);
  otomobil.calistir();
  otomobil.hizlan(40);
  otomobil.bilgiYazdir();
  otomobil.dur();
  print("---------------");

  var tesla = ElektrikliOtomobil("Tesla", "Model 3", 261, 4, 75, sarjYuzdesi: 65);
  tesla.calistir();
  tesla.hizlan(40);
  tesla.sarjEt(20);
  tesla.bilgiYazdir();
  tesla.dur();
  print("---------------");

  // Polymorphism örneği
  List<Arac> garaj = [
    arac,
    otomobil,
    tesla,
    ElektrikliOtomobil("BYD", "Seal", 220, 4, 82, sarjYuzdesi: 90),
  ];

  for (var a in garaj) {
    a.calistir();
    a.hizlan(25);
  }

  print("---------------");

  // Tip kontrolü ve casting
  for (var a in garaj) {
    if (a is ElektrikliOtomobil) {
      a.sarjEt(5);
    }
  }

  print("--------------- TAMAMLANDI ---------------");
}
