import 'Poly_sekil.dart';

// Dikdörtgen sınıfı, Sekil sınıfından türetiliyor (inheritance)
class Dikdortgen extends Sekil {
  double en, boy;

  // Constructor ile dikdörtgenin en ve boy değerleri alınıyor
  Dikdortgen(this.en, this.boy);

  // Üst sınıfta tanımlanan alanHesapla() metodunu kendimize göre uyarlıyoruz (override)
  @override
  double alanHesapla() {
    return en * boy; // Dikdörtgenin alan formülü
  }

  // bilgiYazdir() metodunu da dikdörtgen için yeniden yazıyoruz
  @override
  void bilgiYazdir() {
    print("Bu bir dikdörtgendir. Alanı: ${alanHesapla()}");
  }
}
