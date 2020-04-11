import 'package:app_despliege_dc/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ListaOpciones extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScrollOpciones(
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
    );
  }
}

class ScrollOpciones extends StatelessWidget {
  const ScrollOpciones({Key key, this.children}) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 120,
      margin: const EdgeInsets.only(top: 20),
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        scrollDirection: Axis.horizontal,
        children: children,
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
      margin: EdgeInsets.fromLTRB(5, 10, 5, 10),
      width: 110,
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
