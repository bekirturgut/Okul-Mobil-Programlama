void main() {
  // -----------------------------
  // 1. Normal değişken (null olamaz)
  // -----------------------------
  int sayi1 = 10;
  print("sayi1: $sayi1"); // her zaman değer taşır

  // -----------------------------
  // 2. Nullable değişken (null olabilir)
  // -----------------------------
  int? sayi2;  // Başlangıçta null
  print("sayi2: $sayi2"); // null

  // -----------------------------
  // 3. Null kontrolü (if ile)
  // -----------------------------
  if (sayi2 == null) {
    print("sayi2 şu an null");
  }

  // -----------------------------
  // 4. !! -> null değilmiş gibi zorlama (!)
  // -----------------------------
  // Aşağıdaki satır çalıştırılırsa hata verir çünkü sayi2 null:
  // print(sayi2! + 5);
  // Bu yüzden önce değer atayalım:
  sayi2 = 20;
  print("sayi2! kullanımı: ${sayi2! + 5}");

  // -----------------------------
  // 5. ?? -> null ise varsayılan değer
  // -----------------------------
  int? sayi3;
  print("sayi3 ?? 0 = ${sayi3 ?? 0}"); // null ise 0 yazdırır
  sayi3 = 15;
  print("sayi3 dolu iken: ${sayi3 ?? 0}"); // artık 15

  // -----------------------------
  // 6. ?. -> null ise işlemi atla
  // -----------------------------
  String? isim;
  print("isim?.length = ${isim?.length}"); // null → null döner
  isim = "Mehmet";
  print("isim?.length = ${isim?.length}"); // "Mehmet".length = 6

  // -----------------------------
  // 7. ??= -> null ise değer ata
  // -----------------------------
  int? sayi4;
  sayi4 ??= 50; // sayi4 null olduğu için 50 atanır
  print("sayi4: $sayi4");
  sayi4 ??= 100; // artık null değil, değiştirmez
  print("sayi4 tekrar: $sayi4");

  // -----------------------------
  // 8. Kombinasyon Örneği
  // -----------------------------
  String? mesaj="deneme";
  print("Mesaj uzunluğu: ${(mesaj?.length ?? 0)}");
  // ?. → mesaj null ise length çalışmaz
  // ?? 0 → null olursa 0 kabul edilir
}
