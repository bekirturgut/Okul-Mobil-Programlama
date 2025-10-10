// Statik değişkenler: Sınıfın tüm örnekleri (objeleri) tarafından ortak kullanılır.
// Yani her nesne için ayrı ayrı kopyası yoktur.
//
// Statik metotlar: Nesne oluşturmadan, doğrudan sınıf adı üzerinden çağrılabilir.

class HesapMakinesi {
  // Statik değişken
  static int sayac = 0;

  // Statik metot
  static int topla(int a, int b) {
    sayac++;
    return a + b;
  }

  static int carp(int a, int b) {
    sayac++;
    return a * b;
  }

  // Normal (statik olmayan) metot
  void selamla() {
    print("Merhaba! Ben normal bir metotum.");
  }
}
