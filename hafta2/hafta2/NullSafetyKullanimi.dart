void main() {
  // Bir değişkeni nullable (String?) tanımladığımızda,
  // değer vermesek bile hata vermez. Ama null olabilir!
  String? mesaj = null;

  // Sonradan değer atayabiliriz
  mesaj = "Merhaba";

  // Başka bir nullable değişken
  String? isim = null;

  // Değer atıyoruz
  isim = "Ahmet";

  // --- Yöntem 1: ?. (Null-aware access operator)
  // Eğer isim null değilse toUpperCase() çalışır.
  // Eğer null ise sonuç null döner (hata fırlatmaz).
  print("Sonuç 1 : ${isim?.toUpperCase()}");

  // --- Yöntem 2: ! (Null assertion operator)
  // Burada biz Dart'a "eminim null değil!" deriz.
  // Eğer null değilse çalışır, null ise runtime hatası (LateInitializationError) verir.
  print("Sonuç 2 : ${isim!.toUpperCase()}");

  // --- Yöntem 3: if kontrolü ile güvenli kullanım
  // Bu en güvenli yöntemdir. null olup olmadığını manuel kontrol ederiz.
  if (isim != null) {
    print("Sonuç 3 : ${isim.toUpperCase()}");
  } else {
    print("isim null ve işlem yapılmadı");
  }

  // --- Yöntem 4: ?? (Null-coalescing operator)
  // Eğer değişken null ise, sağdaki değeri kullanır.
  String? soyisim = null;
  print("Sonuç 4 : ${soyisim ?? "Soyisim girilmedi"}");

  // --- Yöntem 5: ??= (Null-aware assignment)
  // Eğer değişken null ise, yeni bir değer atanır.
  soyisim ??= "Yılmaz";
  print("Sonuç 5 : $soyisim");
}

/*
? → null olabilir demek (String? isim).

?. → null değilse çalıştır, null ise null döndür.

! → null olmadığını garanti ediyorsun (yanlışsan hata alırsın).

if → en güvenli yöntem, kendin kontrol edersin.

?? → null ise alternatif değer kullan.

??= → null ise o değeri ata.
 */