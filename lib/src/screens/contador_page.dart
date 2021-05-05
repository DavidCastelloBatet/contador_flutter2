import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  _ContadorPageState createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  //Propiedades
  final TextStyle _estiloTexto = TextStyle(fontSize: 25.0);
  final Color _blueAccent = Colors.blueGrey[700];
  int _contador = 0;

  //Métodos
  void _sumar() => setState(() => _contador++);
  void _restar() => setState(() => _contador--);
  void _reset() => setState(() => _contador = 0);

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30),
        FloatingActionButton(
            backgroundColor: _blueAccent,
            onPressed: () {
              _reset();
            },
            child: Icon(Icons.exposure_zero)),
        Expanded(child: SizedBox()),
        FloatingActionButton(
            backgroundColor: _blueAccent,
            onPressed: () {
              _sumar();
            },
            child: Icon(Icons.exposure_plus_1)),
        SizedBox(width: 30),
        FloatingActionButton(
            backgroundColor: _blueAccent,
            onPressed: () {
              _restar();
            },
            child: Icon(Icons.exposure_minus_1)),
      ],
    );
  }

  //Clase
  @override
  Widget build(BuildContext context) {
    //Variables locales
    final _estiloNumero = TextStyle(
      color: _contador < 0 ? Colors.red : Colors.blueGrey[700],
      fontSize: 25.0,
    );

    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        title: Text(
          'Contador Flutter2',
        ),
        backgroundColor: _blueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Número de clicks :', style: _estiloTexto),
            Text('$_contador', style: _estiloNumero),
          ],
        ),
      ),
      floatingActionButton: _crearBotones(),
    );
  }
}
