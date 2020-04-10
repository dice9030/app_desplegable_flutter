import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MiPerfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        FaIcon(
          FontAwesomeIcons.userCircle,
          size: 40,
        ),
        Divider(color: Colors.grey, height: 40),
        MiPerfilTile(nombre: 'Nombre', valor: 'Diego Manuel'),
        Divider(color: Colors.grey, height: 40),
        MiPerfilTile(nombre: 'Apellido', valor: 'Celis Gotia'),
        Divider(color: Colors.grey, height: 40),
        MiPerfilTile(nombre: 'Edad', valor: '29'),
        Divider(color: Colors.grey, height: 40),
      ],
    );
  }
}

class MiPerfilTile extends StatelessWidget {
  const MiPerfilTile({Key key, this.nombre, this.valor})
      : assert(nombre != null),
        assert(valor != null),
        super(key: key);

  final String nombre;
  final String valor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text(
          '$nombre: ',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(
          valor,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
