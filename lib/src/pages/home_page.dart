import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final estiloTexto = new TextStyle(fontSize: 25);
  final contador =1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("titulo melo"),
          centerTitle: true,
          elevation: 10.2,
          backgroundColor: Color(0xffff1744),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Numero de contador:", style: estiloTexto),
              Text(
                "aqui uno",
                style: TextStyle(fontSize: 20),
              )
            ],
          ),
        ),
        // floatingActionButtonLocation: FloatingActionButtonLocation.miniStartTop,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("hola mundo");
          },
          child: Icon(Icons.add
              //
              ),
        ));
  }
}
