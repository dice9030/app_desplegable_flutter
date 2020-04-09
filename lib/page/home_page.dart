
import 'package:app_despliege_dc/widget/exportwidget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Fondo(),
          Titulo(),
          ListaOpciones(),
          DespliegueDecorativoHorizontal(
            position: 0,
            color: Color(0xff1AA7E8),
            child: Relleno(),
            // child: Text('aaa')
          ),
          DespliegueDecorativoHorizontal(
            position: -80,
            color: Colors.white,
            child: MiPerfil(),
            // child: Text('data'),
          ),
          DespliegueDecorativoHorizontal(
            position: -160,
            color: Color(0xff45C4FF),
            child: Relleno()
            // child: Text('aaa')
          ),
        ],
      ),
    );
  }
}







