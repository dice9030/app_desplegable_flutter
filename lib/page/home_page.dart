import 'package:app_despliege_dc/widget/exportwidget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: Titulo(),
      body: Stack(
        children: <Widget>[
          Fondo(),
          DespliegueDecorativoHorizontal(
            position: 0,
            color: Color(0xff1AA7E8),
            child: Relleno(),
          ),
          DespliegueDecorativoHorizontal(
            position: -80,
            color: Colors.white,
            child: MiPerfil(),
          ),
          DespliegueDecorativoHorizontal(
            position: -160,
            color: Color(0xff45C4FF),
            child: Relleno(),
          ),
        ],
      ),
    );
  }
}
