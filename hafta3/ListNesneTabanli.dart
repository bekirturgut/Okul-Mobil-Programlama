import 'package:collections/Ogrenciler.dart';

void main(){

  var o1 = Ogrenciler(1,"Ali","1A");
  var o2 = Ogrenciler(2,"Veli","2B");
  var o3 = Ogrenciler(3,"Fatma","3C");

  var ogrenciler = <Ogrenciler>[];

  ogrenciler.add(o1);
  ogrenciler.add(o2);
  ogrenciler.add(o3);

  for(var o in ogrenciler){
    print("**********");
    print("Öğrenci no : ${o.no}");
    print("Öğrenci ad : ${o.ad}");
    print("Öğrenci sınıf : ${o.sinif}");
  }


}