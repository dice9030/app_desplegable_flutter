import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Relleno extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SubHeader(),
            SizedBox(height: 25),
            Text(
              'Tus movimientos:',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Divider(color: Colors.white),
        SizedBox(height: 20),
        DetalleMoneda(),
        SizedBox(height: 20),
        DetalleMoneda(),
        SizedBox(height: 20),
        DetalleMoneda(),
        SizedBox(height: 20),
      ],
    );
  }
}

class DetalleMoneda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: 50,
          height: 50,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Color(0xffD5F1FF),
              borderRadius: BorderRadius.circular(10)),
          child: FaIcon(
            FontAwesomeIcons.moneyBill,
            color: Color(0xff1CB7FF),
          ),
        ),
        SizedBox(width: 40),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Dolares',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Text('Moneda',
                  style: TextStyle(fontSize: 15, color: Colors.white)),
            ],
          ),
        ),
        Text(
          'S/. 50000',
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}

class SubHeader extends StatelessWidget {
  const SubHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          child: Row(
            children: <Widget>[
              FaIcon(
                FontAwesomeIcons.thumbsUp,
                size: 30,
                color: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '227k',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  Text(
                    'Like',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  )
                ],
              ),
            ],
          ),
        ),
        Container(
          child: Row(
            children: <Widget>[
              FaIcon(
                FontAwesomeIcons.heartbeat,
                size: 30,
                color: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '227k',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  Text(
                    'Like',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
