// Arac.dart
// Taban sınıf (base class)

class Arac {
  String marka;
  String model;
  int maxHiz;
  int anlikHiz = 0;

  // Kurucu
  Arac(this.marka, this.model, this.maxHiz);

  void calistir() {
    print("[$marka $model] Motor çalıştırılıyor...");
  }

  void hizlan(int artis) {
    anlikHiz += artis;
    if (anlikHiz > maxHiz) anlikHiz = maxHiz;
    print("[$marka $model] Hız: $anlikHiz km/s");
  }

  void dur() {
    anlikHiz = 0;
    print("[$marka $model] Araç durdu. Hız: $anlikHiz km/s");
  }

  void bilgiYazdir() {
    print("Araç -> Marka: $marka, Model: $model, MaxHız: $maxHiz, AnlıkHız: $anlikHiz");
  }
}
