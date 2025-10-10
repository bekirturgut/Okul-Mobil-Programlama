// main.dart
import 'HesapMakinesi.dart';

void main() {
  // Statik değişken ve metotlar için nesne oluşturmaya gerek yok!
  print("Toplam: ${HesapMakinesi.topla(5, 10)}");
  print("Çarpım: ${HesapMakinesi.carp(4, 6)}");

  // Kaç işlem yapıldığını statik sayaçtan görebiliriz
  print("Toplam yapılan işlem sayısı: ${HesapMakinesi.sayac}");

  // Statik olmayan metot için nesne gerekir
  var h1 = HesapMakinesi();
  h1.selamla();
}
