import 'package:app_despliege_dc/colors/colors.dart';
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

class ScrollOpciones extends StatefulWidget {
  @override
  _ScrollOpcionesState createState() => _ScrollOpcionesState();
}

class _ScrollOpcionesState extends State<ScrollOpciones> {
  final contoller = PageController(initialPage: 1, viewportFraction: 0.3);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: PageView(
        pageSnapping: false,
        controller: contoller,
        children: <Widget>[
          Opcion.seleccion(
            icon: FontAwesomeIcons.user,
            titulo: 'Opcion1',
            seleccionado: true,
          ),
          Opcion.seleccion(
            icon: FontAwesomeIcons.facebook,
            titulo: 'Opcion2',
            seleccionado: false,
          ),
          Opcion.seleccion(
            icon: FontAwesomeIcons.twitch,
            titulo: 'Opcion3',
            seleccionado: false,
          ),
          Opcion.seleccion(
            icon: FontAwesomeIcons.twitter,
            titulo: 'Opcion4',
            seleccionado: false,
          ),
          Opcion.seleccion(
            icon: FontAwesomeIcons.chair,
            titulo: 'Opcion5',
            seleccionado: false,
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

  factory Opcion.seleccion({
    bool seleccionado = false,
    IconData icon,
    String titulo,
  }) {
    assert(icon != null);
    assert(titulo != null);
    assert(seleccionado != null);
    final color = seleccionado ? AppColors.blue : Colors.grey[350];
    final colorTexto = seleccionado ? Colors.white : Colors.black;
    return Opcion(
      titulo: titulo,
      icon: FaIcon(icon, size: 22, color: colorTexto),
      color: color,
      colorTexto: colorTexto,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.only(top: 20, left: 20),
      decoration: BoxDecoration(
        color: this.color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          this.icon,
          SizedBox(height: 3),
          Expanded(
            child: Text(
              this.titulo,
              style: TextStyle(fontSize: 18, color: this.colorTexto),
            ),
          ),
          Expanded(
            child: Text(
              this.titulo,
              style: TextStyle(fontSize: 12, color: this.colorTexto),
            ),
          )
        ],
      ),
    );
  }
}
