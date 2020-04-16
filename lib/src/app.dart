import 'package:contador/src/pages/contador_page.dart';
import 'package:flutter/material.dart';

class myApp extends StatelessWidget {
  const myApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //para quitar la letra de debug
      home: Center(
        child: ContadorPage(),

      )
    );
  }
}