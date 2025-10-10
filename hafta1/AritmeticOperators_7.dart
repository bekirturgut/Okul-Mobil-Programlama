void main() {
  int a = 15;
  int b = 4;

  // Toplama
  int toplam = a + b;
  print("Toplama: $a + $b = $toplam");

  // Çıkarma
  int fark = a - b;
  print("Çıkarma: $a - $b = $fark");

  // Çarpma
  int carpim = a * b;
  print("Çarpma: $a * $b = $carpim");

  // Bölme -> double sonuç döner
  double bolme = a / b;
  print("Bölme: $a / $b = $bolme");

  // Tamsayı bölme -> sadece bölümün tam kısmı alınır
  int tamBolme = a ~/ b;
  print("Tamsayı Bölme: $a ~/ $b = $tamBolme");

  // Mod alma (kalan bulma)
  int kalan = a % b;
  print("Mod (Kalan): $a % $b = $kalan");

  // Negatif yapma
  int negatif = -a;
  print("Negatif yapma: -$a = $negatif");

  // ++ ve -- operatörleri
  int x = 5;
  print("\nBaşlangıç x: $x");

  //x++; // x = x + 1
  print("x++ sonrası: ${x++}");

  //x--; // x = x - 1
  print("x-- sonrası: ${x--}");

  //++x; // önce artır sonra kullan
  print("++x sonrası: ${++x}");

  //--x; // önce azalt sonra kullan
  print("--x sonrası: ${--x}");
}
