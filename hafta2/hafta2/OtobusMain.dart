

import 'package:null_safety/Otobus.dart';

void main(){

  var firma = Otobus();

  firma.kapasite = 50;
  firma.nereden = "Bursa";
  firma.nereye = "Ankara";
  firma.mevcutYolcu = 10;

  firma.bilgiAl();

  firma.yolcuIndir(5);

  firma.bilgiAl();

  firma.yolcuAl(20);

  firma.bilgiAl();

}