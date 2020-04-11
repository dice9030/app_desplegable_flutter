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
  _DespliegueDecorativoHorizontalState createState() =>
      _DespliegueDecorativoHorizontalState();
}

class _DespliegueDecorativoHorizontalState
    extends State<DespliegueDecorativoHorizontal>
    with SingleTickerProviderStateMixin {
  double tamano = 0.0;

  AnimationController controller;
  Animation<double> subirAnimation;
  Animation<double> bajarAnimation;
  Animation<double> actualAnimation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    controller.addListener(() => setState(() {}));
    final tween = Tween(begin: 0.0, end: 300.0);
    subirAnimation = tween.animate(
      CurvedAnimation(parent: controller, curve: Curves.elasticOut),
    );
    bajarAnimation = ReverseTween(tween).animate(
      CurvedAnimation(parent: controller, curve: Curves.easeInOutBack),
    );
    actualAnimation = subirAnimation;
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void toogle() {
    print('xxxx');
    if (controller.value == 1.0) {
      if (actualAnimation == subirAnimation) {
        actualAnimation = bajarAnimation;
      } else {
        actualAnimation = subirAnimation;
      }
      controller.forward(from: 0.0);
    } else if (controller.value == 0) {
      controller.forward();
    } else if (controller.status == AnimationStatus.forward) {
      controller.reverse();
    } else if (controller.status == AnimationStatus.reverse) {
      controller.forward();
    }
  }

  @override
  Widget build(BuildContext context) {
    final mqSize = MediaQuery.of(context).size;
    return Positioned(
      top: mqSize.height - widget.position - 160 - actualAnimation.value,
      child: GestureDetector(
        onTap: toogle,
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: widget.color,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
            ),
          ),
          width: mqSize.width,
          height: mqSize.height,
          child: widget.child,
        ),
      ),
    );
  }
}
