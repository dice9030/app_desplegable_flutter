import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MiPerfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          child: FaIcon(FontAwesomeIcons.userCircle,size: 40,),
        ),
        SizedBox(height: 20,),
        Divider(color: Colors.grey,),
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text('Nombre: ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            Text('Diego Manuel',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),)            
          ],
        ),
        SizedBox(height: 20,),
        Divider(color: Colors.grey,),
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text('Apellido: ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            Text('Celis Gotia',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),)            
          ],
        ),
        SizedBox(height: 20,),
        Divider(color: Colors.grey,),
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text('Edad: ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            Text('29',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),)            
          ],
        ),
        SizedBox(height: 20,),
        Divider(color: Colors.grey,),
        SizedBox(height: 20,),
      ],
     );
  }
}
