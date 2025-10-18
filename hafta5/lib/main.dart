import 'package:flutter/material.dart';
import 'package:mobilders1/LoginPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.login,size: 50,),
          backgroundColor: Colors.amber,
          shadowColor: Colors.black,
          elevation: 6,
          title: Text("Login Page")
        ),
        body: LoginPage()
      ),
    );
  }
}
