// Amaç: Dart List (dinamik diziler) için temel ve pratik fonksiyonları göstermektir.

void main() {
  print('=== 1) OLUSTURMA / TEMEL ERISIM ===');
  // Boş, büyüyebilir liste
  final List<int> sayilar = [1,2,3];
  // Doğrudan değerlerle
  final meyveler = <String>['elma', 'armut', 'muz'];
  // Sabit uzunluklu (growable=false) liste
  final sabit = List<int>.filled(5, 0, growable: false);
  // Otomatik üretim
  final carpimTablosu = List<int>.generate(
      5, (i) => (i + 1) * 3); // [3,6,9,12,15]

  print('sayilar: $sayilar');
  print('meyveler: $meyveler (uzunluk: ${meyveler.length})');
  print('sabit (fixed): $sabit (growable? ${sabit is List<int> &&
      sabit.length == 5})');
  print('carpimTablosu: $carpimTablosu');

  // Indeks erişimi
  print('meyveler[0]: ${meyveler[0]}  meyveler.first: ${meyveler
      .first}  meyveler.last: ${meyveler.last}');
  print('Boş mu? sayilar.isEmpty=${sayilar
      .isEmpty}, meyveler.isNotEmpty=${meyveler.isNotEmpty}');

  print('\n=== 2) EKLEME / CIKARMA ===');
  sayilar.add(10); // sona ekle
  sayilar.addAll([20, 30]); // birden fazla ekle
  sayilar.insert(0, 5); // belli pozisyona ekle
  sayilar.insertAll(2, [7, 8]); // belli pozisyona çoklu ekle
  print('Ekleme sonrası sayilar: $sayilar');

  // Silmeler
  sayilar.remove(20); // değeri bulup ilkini siler
  final removedAt = sayilar.removeAt(0); // indeks ile sil
  final removedLast = sayilar.removeLast(); // sondan sil
  print(
      'remove(20), removeAt(0)->$removedAt, removeLast()->$removedLast  => $sayilar');

  // Şarta bağlı silme
  sayilar.removeWhere((x) => x < 10);
  print('removeWhere(x<10) => $sayilar');

  // Yalnızca eşleşenleri tut (diğerlerini at)
  sayilar.retainWhere((x) => x.isEven);
  print('retainWhere(even) => $sayilar');

  // Temizle
  final tmp = [1, 2, 3];
  tmp.clear();
  print('clear() sonrası tmp: $tmp');

  print('\n=== 3) ARAMA / KONTROL ===');
  final harfler = ['a', 'b', 'c', 'b', 'd'];
  print('harfler: $harfler');
  print('contains("c")? ${harfler.contains('c')}');
  print('indexOf("b"): ${harfler.indexOf('b')}  lastIndexOf("b"): ${harfler
      .lastIndexOf('b')}');

  print('\n=== 4) SIRALAMA / TERS CEVIRME / KARIŞTIRMA ===');
  final karisik = [5, 1, 8, 2, 9, 2];
  karisik.sort(); // doğal sıralama (küçükten büyüğe)
  print('sort() => $karisik');

  // Özel karşılaştırıcı (büyükten küçüğe)
  karisik.sort((a, b) => b.compareTo(a));
  print('sort(desc) => $karisik');

  // reversed: Iterable döner, toList ile listeye çevir
  final ters = karisik.reversed.toList();
  print('reversed => $ters');

  // shuffle: rastgele karıştırır (yerinde)
  ters.shuffle();
  print('shuffle() => $ters');

  print('\n=== 5) DİLİMLEME / KOPYALAMA / DEĞİŞTİRME ===');
  final dizi = [10, 20, 30, 40, 50, 60];
  print('dizi: $dizi');
  // sublist: [start, end) end dahil değil
  print('sublist(1,4) => ${dizi.sublist(1, 4)}'); // [20,30,40]

  // replaceRange: aralığı başka elemanlarla değiştir
  final d1 = [...dizi];
  d1.replaceRange(2, 4, [300, 400, 500]); // 30 ve 40 gidip 3 değer geldi
  print('replaceRange(2,4,[300,400,500]) => $d1');

  // setRange: belirli aralığı başka listeden kopyalar
  final d2 = [0, 0, 0, 0, 0, 0];
  d2.setRange(1, 4, dizi, 2); // dizi[2..3..] -> d2[1..3]
  print('setRange(1,4, dizi, from:2) => $d2');

  // setAll: baştan itibaren başka listedeki değerleri yerleştirir
  final d3 = [100, 100, 100, 100];
  d3.setAll(1, [1, 2]); // [100,1,2,100]
  print('setAll(1,[1,2]) => $d3');

  // fillRange: aralığı sabit bir değerle doldurur
  final d4 = List<int>.filled(6, 0);
  d4.fillRange(2, 5, 9); // [0,0,9,9,9,0]
  print('fillRange(2,5,9) => $d4');

  for(var m in meyveler){
    print("Sonuç : $m");
  }

  for(var i=0;i<meyveler.length;i++){
    print("$i. indeksteki veri : ${meyveler[i]}");
  }
}