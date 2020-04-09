// import 'package:app_transform_flutter/src/widget/listado.dart';
import 'package:flutter/material.dart';


class DespliegueDecorativoHorizontal extends StatefulWidget {
  
  final double position;
  final Color color;
  final Widget child;
  const DespliegueDecorativoHorizontal({ 
    this.position = 0, 
    this.color = Colors.blueGrey,
    @required this.child,
  });

  
  @override
  _DespliegueDecorativoHorizontalState createState() => _DespliegueDecorativoHorizontalState();
}

class _DespliegueDecorativoHorizontalState extends State<DespliegueDecorativoHorizontal> with SingleTickerProviderStateMixin {
  double tamano = 0.0;
  double cuadroSubir = 600.0;
  double cuadroBajar = 300.0;
  AnimationController controller;
  Animation<double> mover;
  Animation<double> subir;


  @override
  void initState() {
    super.initState();
    controller = AnimationController(vsync: this, duration: Duration(milliseconds: 1000));
    mover = Tween(begin: cuadroSubir, end: cuadroBajar).animate(
      CurvedAnimation(parent: controller,curve: Curves.elasticOut)
    );
    subir = Tween(begin: cuadroBajar, end: cuadroSubir).animate(
      CurvedAnimation(parent: controller,curve: Curves.easeInOutBack)
    );
  }
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    controller.forward(from: 0.0);
    return Positioned(
      bottom: widget.position,
      child: AnimatedBuilder(
          animation: controller,
          builder: (BuildContext context, Widget child){
            return RawMaterialButton(
                  onPressed: () {
                    setState(() {
                      if (tamano == 0 || tamano == 300 ) {
                        tamano = 600;
                      } else {
                        tamano = 300;
                      }
                    });
                  },
                child: Container( 
                  decoration: BoxDecoration(
                    color: widget.color,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    )

                  ),
                  width: MediaQuery.of(context).size.width,
                  height: (tamano == 600 )?   subir.value : ((tamano == 0.0 )? 300 :mover.value) ,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: widget.child,
                  ),
                ),
            );
          },
          
      ),
    );
  }
}