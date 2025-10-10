import 'dart:io';

void main() {
  // -----------------------------
  // 1. KULLANICIDAN STRING GİRİŞ ALMA
  // -----------------------------

  print("Adınızı giriniz: ");
  String isim = stdin.readLineSync()!;

  print("Soyadınızı giriniz: ");
  String soyad = stdin.readLineSync()!;

  print("Merhaba $isim $soyad, hoş geldiniz!\n");

  // -----------------------------
  // 2. KULLANICIDAN SAYISAL GİRİŞ (HATA AYIKLAMALI)
  // -----------------------------

  int? sayi1; // Başlangıçta null
  int? sayi2;

  // Birinci sayı için try-catch
  try {
    print("1. sayıyı giriniz: ");
    sayi1 = int.parse(stdin.readLineSync()!);
  } catch (e) {
    print("Hata: Geçerli bir sayı girmediniz! Varsayılan değer 0 olarak alındı.");
    sayi1 = 0; // Hatalı girişte 0 kabul ediyoruz
  }

  // İkinci sayı için try-catch
  try {
    print("2. sayıyı giriniz: ");
    sayi2 = int.parse(stdin.readLineSync()!);
  } catch (e) {
    print("Hata: Geçerli bir sayı girmediniz! Varsayılan değer 0 olarak alındı.");
    sayi2 = 0;
  }

  // -----------------------------
  // 3. ARİTMETİK İŞLEMLER
  // -----------------------------

  int toplam = sayi1! + sayi2!;
  int fark = sayi1 - sayi2;
  int carpim = sayi1 * sayi2;
  double bolum = 0;

  // Bölme hataya açık olduğu için ayrı kontrol
  if (sayi2 != 0) {
    bolum = sayi1 / sayi2;
  } else {
    print("Uyarı: Sıfıra bölme hatası!");
  }

  // -----------------------------
  // 4. SONUÇLARI YAZDIRMA
  // -----------------------------

  print("\n===== Sonuçlar =====");
  print("Toplam : $toplam");
  print("Fark   : $fark");
  print("Çarpım : $carpim");
  if (sayi2 != 0) {
    print("Bölüm  : $bolum");
  }

  // -----------------------------
  // 5. STRING VE SAYIYI BİRLİKTE KULLANMA
  // -----------------------------
  print("\n$isim $soyad, girdiğiniz sayıların toplamı: $toplam");
}
