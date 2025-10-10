void main(){

  // Normal değişken -> sonradan değiştirilebilir
  int sayi = 30;
  sayi = 50; // değiştirilebilir

  // ---------- FINAL ----------
  // final değişkenler: sadece 1 kere değer atanabilir,
  // atandıktan sonra değiştirilemez. Değer çalışma zamanında (runtime) belli olabilir.
  final sonuc = 100;
  // sonuc = 200; hata verir (final değiştirilemez)

  final pi = 3.14;             // double tipinde final
  final String mesaj = "merhaba"; // string tipinde final
  final tarih = DateTime.now();   // runtime anında belli olabilir

  print("Final değerler:");
  print("sonuc = $sonuc, pi = $pi, mesaj = $mesaj, tarih = $tarih");

  // ---------- CONST ----------
  // const değişkenler: derleme zamanında (compile-time) sabit olmalı,
  // program çalışmadan önce değeri kesinleşmiş olmalı.
  const y = 20;
  const double a = 20.9;
  // const tarih2 = DateTime.now(); hata (çünkü runtime'da belli olur)

  print("Const değerler:");
  print("y = $y, a = $a");

  // ---------- Farklar ----------
  // 1) final = runtime değer alabilir, const = compile-time kesin değer almalı
  // 2) final değişkene DateTime.now() atanabilir, const değişkene atanamaz
  // 3) her ikisi de sadece 1 kere atanabilir ve sonradan değiştirilemez
}
