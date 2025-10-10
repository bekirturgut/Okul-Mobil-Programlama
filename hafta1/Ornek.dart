// Değişkenin ulaşılabilirliği süslü parantezler arasındadır.
// Global (class seviyesinde) değişkenler ile local değişkenler
// aynı isimle tanımlandığında local değişken baskın olur (shadowing).

class Ornek {
  int x = 10; // Global değişken
  int y = 20; // Global değişken

  void topla() {
    int x = 40; // Local değişken (global x'i gölgeler)
    print("Local x başlangıç: $x");
    x = x + y; // Burada y global değişkendir
    print("Local x + global y = $x");
  }

  void carpma() {
    // Burada class'ın global x ve y değişkenleri kullanılır
    x = x * y;
    print("Global x * Global y = $x");
  }

  void fark() {
    int y = 5; // Local değişken (global y gölgelenir)
    int sonuc = x - y; // x global, y local
    print("Global x - Local y = $sonuc");
  }

  void bilgiYazdir() {
    print("Global x = $x, Global y = $y");
  }
}


