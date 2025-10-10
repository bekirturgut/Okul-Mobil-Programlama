// Public (her yerden erişilebilir): Normal isimlendirme ile tanımlanan değişkenlerdir (renk, hiz gibi).
//
// Private (sadece aynı dosya içinde erişilebilir): Başına _ (alt çizgi) konularak tanımlanan değişkenlerdir
class Araba {
  // Public değişkenler
  String renk = "Beyaz";
  int hiz = 0;

  // Private değişken (sadece bu dosya içinde erişilebilir)
  String _motorNo = "XYZ12345";

  // Getter ile private değişkene güvenli erişim
  String get motorNo => _motorNo;

  // Setter ile private değişkeni kontrollü değiştirme
  set motorNo(String yeniMotorNo) {
    if (yeniMotorNo.length >= 5) {
      _motorNo = yeniMotorNo;
    } else {
      print("Motor numarası en az 5 karakter olmalı!");
    }
  }

  // Metot
  void bilgileriGoster() {
    print("Araba rengi: $renk");
    print("Hızı: $hiz km/s");
    print("Motor No: $_motorNo");
  }
}
