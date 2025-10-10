import 'Poly_sekil.dart';

// Daire sınıfı da Sekil sınıfından türetiliyor
class Daire extends Sekil {
  double yaricap;

  // Constructor ile dairenin yarıçapı alınıyor
  Daire(this.yaricap);

  // Dairenin alanı (π * r^2) formülü ile hesaplanıyor
  @override
  double alanHesapla() {
    return 3.14 * yaricap * yaricap;
  }

  // bilgiYazdir() metodunu da kendimize özgü şekilde yeniden yazıyoruz
  @override
  void bilgiYazdir() {
    print("Bu bir dairedir. Alanı: ${alanHesapla()}");
  }
}
