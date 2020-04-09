import 'package:flutter/material.dart';

class Fondo extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/image/imagen1.png'),
        // fit: BoxFit.none,
        // height: 500,
      ),

    );
  }
}