import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class ListaOpciones extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 110,
      left: 6,
        child: ScrollOpciones(),
    );
  }
}

class ScrollOpciones extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 120,
      child: PageView(
        pageSnapping: false,
        controller: PageController(
          initialPage: 1,
          viewportFraction: 0.3
        ),
        children: <Widget>[
          Opcion(
            color: Color(0xff1AA7E8),
            icon: FaIcon(FontAwesomeIcons.user,size: 22,color: Colors.white,),
            titulo: 'Opcion1',
          ),
          Opcion(
            color: Colors.grey[350],
            colorTexto: Colors.black,
            icon: FaIcon(FontAwesomeIcons.facebook,size: 22,color: Colors.black,),
            titulo: 'Opcion2',
          ),
          Opcion(
            color: Colors.grey[350],
            colorTexto: Colors.black,
            icon: FaIcon(FontAwesomeIcons.twitch,size: 22,color: Colors.black,),
            titulo: 'Opcion2',
          ),
          Opcion(
            color: Colors.grey[350],
            colorTexto: Colors.black,
            icon: FaIcon(FontAwesomeIcons.twitter,size: 22,color: Colors.black,),
            titulo: 'Opcion2',
          ),
          Opcion(
            color: Colors.grey[350],
            colorTexto: Colors.black,
            icon: FaIcon(FontAwesomeIcons.chair,size: 22,color: Colors.black,),
            titulo: 'Opcion2',
          ),
         
          
             
        ],
      ),
      );
  }
}

class Opcion extends StatelessWidget {

  final FaIcon icon;
  final String titulo;
  final Color color;
  final Color colorTexto;

  const Opcion({ 
    @required this.icon, 
    @required this.titulo,
    this.color = Colors.grey,
    this.colorTexto = Colors.white,

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),

      child: Container(
      padding: EdgeInsets.only(top:20,left: 20),
        decoration: BoxDecoration(
          color: this.color,
          borderRadius: BorderRadius.circular(20),

        ),
        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            this.icon,
            SizedBox(height: 3,),
            Expanded(child: Text(this.titulo,style: TextStyle(fontSize: 18,color: this.colorTexto),)),
            Expanded(child: Text(this.titulo,style: TextStyle(fontSize: 12,color: this.colorTexto),))
          ],
        ),
      ),
    );
  }
}
