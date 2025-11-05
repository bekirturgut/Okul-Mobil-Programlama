import 'package:flutter/material.dart';

class Gorevekle extends StatefulWidget {
  const Gorevekle({super.key});

  @override
  State<Gorevekle> createState() => _GorevekleState();
}

class _GorevekleState extends State<Gorevekle> {

  @override
  Widget build(BuildContext context) {
    var ekran_bilgisi = MediaQuery.of(context);
    final double genislik = ekran_bilgisi.size.width;
    final double yukseklik = ekran_bilgisi.size.height;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Görevinizi Giriniz:"),
          TextField(
            minLines: 1,
            maxLines: null,
            keyboardType: TextInputType.multiline,
            decoration: InputDecoration(
              // Odaklanıldığında (tıklandığında) kenarlık ayarı
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(50.0)),
                borderSide: BorderSide(color: Colors.blue, width: 2.0),
              ),

              // Pasif durumda (henüz odaklanılmamış) kenarlık ayarı
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(50.0)),
                borderSide: BorderSide(color: Colors.blue, width: 1.0),
              ),

              labelText: 'Görev',
              hintText: 'Görev Giriniz...',
            ),
          ),
        ],
      ),
    );
  }
}
