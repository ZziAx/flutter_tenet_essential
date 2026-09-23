import 'package:erp_finalprice/core/widgets/behaviors/hover_tracker.dart';
import 'package:flutter/material.dart';
import 'package:ink_widget/ink_widget.dart';

class PrimaryOutlinedButton extends StatelessWidget {
  String? text;
  IconData? icon;
  VoidCallback onClicked;
  Color backgroundColor;
  Color hoveredBgColor;
  Color color;
  Color hoveredColor;
  Color hoveredBorderColor;
  Color borderColor;
  double width;
  double radius;
  double? aspect;
  double? iconSize;
  double? borderWidth;
  double ?fontSize;

  PrimaryOutlinedButton({
    super.key,
    required String this.text,
    required this.onClicked,
    this.backgroundColor = Colors.white,
    this.hoveredBgColor = Colors.black,
    this.color = Colors.black,
    this.hoveredColor = Colors.white,
    this.hoveredBorderColor = Colors.black,
    this.borderColor = Colors.red,
    this.fontSize = 13,
    this.radius = 5,
    this.width = 140,
    this.aspect,
    this.borderWidth,
  });

  PrimaryOutlinedButton.icon({
    super.key,
    required IconData this.icon,
    required this.onClicked,
    this.backgroundColor = Colors.white,
    this.hoveredBgColor = Colors.black,
    this.color = Colors.black,
    this.hoveredColor = Colors.white,
    this.hoveredBorderColor = Colors.black,
    this.borderColor = Colors.red,
    this.radius = 5,
    this.width = 140,
    this.aspect,
    this.iconSize,
    this.borderWidth,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: HoverTracker(
        builder: (isHovered) {
          return GestureDetector(
            onTap: onClicked,
            child: Container(
              width: width,
              height: aspect != null ? width / aspect! : 35,
              decoration: BoxDecoration(
                border: Border.all(
                  color: isHovered ? hoveredBorderColor : borderColor,
                  width: borderWidth ?? 2.5,
                ),
                borderRadius: BorderRadius.circular(8),

                color: isHovered ? hoveredBgColor : backgroundColor,
              ),
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 3),
              child:
                  icon != null
                      ? Icon(
                        icon,
                        color: isHovered ? hoveredColor : color,
                        size: iconSize,
                      )
                      : Text(
                        text!,
                        overflow: TextOverflow.ellipsis,
                        style:
                          
                            TextStyle(
                              fontFamily: "yekan bakh",
                              color: isHovered ? hoveredColor : color,
                              fontSize: fontSize
                            ),
                      ),
            ),
          );
        },
      ),
    );
  }
}
