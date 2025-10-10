import 'package:null_safety/Constructor.dart';

void main(){
  //var ogrenci = Ogrenciler();
  //var ogrenci = Ogrenciler(100,"Ahmet");
  var ogrenci = Ogrenciler(ad:"Ahmet", no:100);

  ogrenci.no = 100;
  ogrenci.ad = "Ahmet";

  print(ogrenci.no);
  print(ogrenci.ad);
}