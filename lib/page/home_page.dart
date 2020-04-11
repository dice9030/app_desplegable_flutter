import 'package:app_despliege_dc/colors/colors.dart';
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
            position: 160,
            color: AppColors.blue,
            child: Relleno(),
          ),
          DespliegueDecorativoHorizontal(
            position: 80,
            color: Colors.grey[200],
            child: MiPerfil(),
          ),
          DespliegueDecorativoHorizontal(
            position: 0,
            color: AppColors.lightBlue,
            child: Relleno(),
          ),
        ],
      ),
    );
  }
}
