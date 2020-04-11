import 'listado_opciones.dart';
import 'package:flutter/material.dart';

class Fondo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: <Widget>[
          ListaOpciones(),
          Image(
            image: AssetImage('assets/image/imagen1.png'),
          ),
        ],
      ),
    );
  }
}
