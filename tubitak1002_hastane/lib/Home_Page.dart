import 'package:flutter/material.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  TextStyle yazistil = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: 15,
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20,),
          Container(
            child: Row(
              children: [
                SizedBox(width: 25,),
                Column(
                  children: [
                    Text(
                      "Hasta",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                    Text("1", style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),),
                  ],
                ),
                SizedBox(width: 25,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text("İsim : ", style: yazistil),
                        Text("Bekir Turgut"),
                      ],
                    ),
                    Row(
                      children: [
                        Text("Soyisim : ", style: yazistil),
                        Text("Hapoğlu"),
                      ],
                    ),
                    Row(
                      children: [
                        Text("Yaş : ", style: yazistil),
                        Text("22"),
                      ],
                    ),
                    Row(
                      children: [
                        Text("TC : ", style: yazistil),
                        Text("26831583994"),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
