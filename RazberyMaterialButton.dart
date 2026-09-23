import 'package:erp_finalprice/core/widgets/behaviors/hover_tracker.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class RazberyMaterialbutton extends StatelessWidget {
  VoidCallback onClicked;
  Color? color;
  List<BoxShadow>? shadow;
  Widget child;
  double? aspectRatio;
  double? width;
  double? height;
  BorderRadius radius;

  RazberyMaterialbutton.text({
    super.key,
    required this.onClicked,
    required String text,
    required TextStyle style,
    this.width,
    this.height,

    this.color = Colors.black,
    this.aspectRatio,
    this.shadow,
    BorderRadius?radius
  }) : 
  radius = radius??BorderRadius.circular(10),
  child = Container(
         alignment: Alignment.center,
         child: Text(text, style: style),
       );

  RazberyMaterialbutton({
    super.key,
    required this.onClicked,
    required this.child,
    this.width,
    this.height,
    this.color = Colors.black,
    this.shadow,
    this.aspectRatio,
    BorderRadius?radius

  }):radius = radius??BorderRadius.circular(10);

  @override
  Widget build(BuildContext context) {
    Widget _child = Container(
      decoration: BoxDecoration(
        gradient:
            color == null
                ? null
                : LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [color!.withOpacity(0.6), color!],
                ),
    
        // color: Colors.white,
        border:
            color == null
                ? null
                : GradientBoxBorder(
                  width: 1.5,
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      color!.withOpacity(0.6),
                      Colors.grey.shade200,
                      color!.withOpacity(0.2),
                    ],
                  ),
                ),
        borderRadius:radius,
        boxShadow: shadow,
      ),
    
      child: Center(
        child: ClipRRect(
          borderRadius: radius,
    
          child: child,
        ),
      ),
    );
    return GestureDetector(
      onTap: () {
        onClicked();
      },
      child:
          aspectRatio == null
              ? Container(width: width, height: height, child: _child)
              : AspectRatio(aspectRatio: aspectRatio!, child: _child),
    );
  }
}
