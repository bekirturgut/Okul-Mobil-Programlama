// main.dart


import 'package:null_safety/Araba.dart';

void main() {
  var bmw = Araba();

  // Public değişkenlere direkt erişim
  bmw.renk = "Mavi";
  bmw.hiz = 180;

  // Private değişkene direkt erişim mümkün değil!
  // bmw._motorNo = "AAA111";  // ❌ Hata verir

  // Getter kullanarak private değişkene erişim
  print("Motor No (getter ile): ${bmw.motorNo}");

  // Setter kullanarak motor numarasını değiştirme
  bmw.motorNo = "ABC98765";

  // Araba bilgilerini yazdır
  bmw.bilgileriGoster();
}
