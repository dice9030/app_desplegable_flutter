import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Titulo extends StatelessWidget with PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.only(top: 15),
        child: Row(
          children: <Widget>[
            SizedBox(width: 20),
            Expanded(
              child: Text(
                'Mi usuario',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            FaIcon(
              FontAwesomeIcons.userCircle,
              size: 40,
            ),
            SizedBox(width: 20),
          ],
        ),
      ),
    );
  }
}
