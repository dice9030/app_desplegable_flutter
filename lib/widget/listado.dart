import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PerfilUsuario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        DatosPersonales(),
        SizedBox(height: 10),
        Column(
          children: <Widget>[
            CuadroReserva(),
            Divider(),
            ListTile(
              onTap: () {},
              leading: FaIcon(FontAwesomeIcons.moneyBillWave),
              title: Text('Monedero'),
              trailing: FaIcon(FontAwesomeIcons.chevronRight),
            ),
            Divider(),
            ListTile(
              onTap: () {},
              leading: FaIcon(FontAwesomeIcons.moneyCheckAlt),
              title: Text('Cupones'),
              trailing: FaIcon(FontAwesomeIcons.chevronRight),
            ),
            Divider(),
            ListTile(
              onTap: () {},
              leading: FaIcon(FontAwesomeIcons.laptopCode),
              title: Text('Ofertas'),
              trailing: FaIcon(FontAwesomeIcons.chevronRight),
            ),
            Divider(),
            ListTile(
              onTap: () {},
              leading: FaIcon(FontAwesomeIcons.napster),
              title: Text('Soporte'),
              trailing: FaIcon(FontAwesomeIcons.chevronRight),
            ),
            Divider(),
            ListTile(
              onTap: () {},
              leading: FaIcon(FontAwesomeIcons.phone),
              title: Text('LLamar soporte'),
              trailing: FaIcon(FontAwesomeIcons.chevronRight),
            ),
            Divider(),
            ListTile(
              onTap: () {},
              leading: FaIcon(FontAwesomeIcons.users),
              title: Text('Sobre nosotros'),
              trailing: FaIcon(FontAwesomeIcons.chevronRight),
            ),
            Divider(),
            ListTile(
              onTap: () {},
              leading: FaIcon(FontAwesomeIcons.confluence),
              title: Text('Asjustes'),
              trailing: FaIcon(FontAwesomeIcons.chevronRight),
            ),
            Divider(),
            ListTile(
              onTap: () {},
              leading: FaIcon(FontAwesomeIcons.powerOff),
              title: Text('Cerrar sesion'),
              trailing: FaIcon(FontAwesomeIcons.chevronRight),
            ),
          ],
        ),
        //Column(
        //  children: <Widget>[
        //    Container(
        //      padding: EdgeInsets.only(top: 10.0),
        //      child: Image(
        //        image: AssetImage('assets/imagen/perfil_cancha.png'),
        //        // width: 25.0,
        //        // height: 25.0,
        //      ),
        //    ),
        //  ],
        //),
      ],
    );
  }
}

class DatosPersonales extends StatelessWidget {
  const DatosPersonales({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      width: double.infinity,
      height: 120,
      child: Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 20),
              width: 70,
              child: FaIcon(FontAwesomeIcons.userCircle),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 15),
                  Text('Diego Celis'),
                  SizedBox(height: 7),
                  Text('Masculino, 29 años'),
                  SizedBox(height: 7),
                  Text('992293122'),
                  SizedBox(height: 7),
                  Text('micorreo@hotmal.com'),
                ],
              ),
            ),
            Container(
              width: 25,
              // child: FaIcon(FontAwesomeIcons.chevronRight)
            ),
          ],
        ),
      ),
    );
  }
}

class CuadroReserva extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      width: double.infinity,
      height: 120,
      child: Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Container(
              width: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FaIcon(
                    FontAwesomeIcons.futbol,
                    size: 45,
                  ),
                  Text(
                    '17',
                    style: TextStyle(fontSize: 30),
                  ),
                  Text('martes'),
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Estado de reserva'),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Deportivo Futgol',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '8:00 AM',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20, right: 15),
              height: double.infinity,
              child: Text(
                'Pediente',
                style: TextStyle(
                    color: Colors.orange, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
