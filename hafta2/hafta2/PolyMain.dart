// main.dart
import 'Poly_sekil.dart';
import 'Poly_dikdortgen.dart';
import 'Poly_daire.dart';

void main() {
  // Nesneleri tek tek oluşturalım
  Sekil sekil1 = Dikdortgen(4, 5); // Polymorphism: Sekil tipinde ama aslında Dikdortgen
  Sekil sekil2 = Daire(3);         // Polymorphism: Sekil tipinde ama aslında Daire
  Sekil sekil3 = Dikdortgen(2, 10);

  // Her nesne aynı metodları çağırıyor ama kendi override ettiği versiyon çalışıyor
  sekil1.bilgiYazdir(); // Dikdörtgen
  sekil2.bilgiYazdir(); // Daire
  sekil3.bilgiYazdir(); // Dikdörtgen
}
