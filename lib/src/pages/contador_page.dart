import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() {
    return _ContadorPageState();
  }
}

class _ContadorPageState extends State<ContadorPage> {
  final _estiloTexto = new TextStyle(fontSize: 25);
  int _contador = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("CONTADOR", style: TextStyle(
            fontFamily: "Univers"
          ),),
          centerTitle: true,
          elevation: 10.2,
          backgroundColor: Color(0xffff1744),
          
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Numero de contador toque:", style: _estiloTexto),
              Text(
                "$_contador",
                style: TextStyle(fontSize: 20),
              )
            ],
          ),
        ),
        // floatingActionButtonLocation: FloatingActionButtonLocation.miniStartTop,
        floatingActionButton: _crearBotones());
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(
          width: 25.0,
        ),
        FloatingActionButton(child: Icon(Icons.add), onPressed: _agregar),
        SizedBox(
          width: 10.0,
        ),
        FloatingActionButton(child: Icon(Icons.remove), onPressed: _restar),
        Expanded(child: SizedBox(width: 1.0)),
        FloatingActionButton(child: Icon(Icons.replay), onPressed: _retornar)
      ],
    );
  }

  void _agregar() {
    setState(() => _contador++);
  }

  void _restar() {
    setState(()=>{
      _contador--
    });
  }
  void _retornar() {
    setState(()=> {
      _contador = 0
    });
  }
}
