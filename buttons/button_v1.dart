import 'package:erp_finalprice/core/widgets/Buttons/PrimaryOutlinedButton.dart';
import 'package:erp_finalprice/core/widgets/behaviors/hover_tracker.dart';
import 'package:erp_finalprice/features/CostExcelView/ui/widgets/containers/VariableSettings/variable_list.dart';
import 'package:flutter/material.dart';

class ButtonV1 extends StatelessWidget {
  VoidCallback onClicked;
  String label;
  Color? backgroundColor;
  Color? color;
  Color? shadowColor;
  ButtonV1({
    super.key,
    this.label = 'تایید',
    this.backgroundColor,
    this.color,
    this.shadowColor,
    required this.onClicked,
    
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onClicked();
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(7),
        child: SizedBox(
          height: 30,
          width: double.infinity,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned.fill(
                child: Container(color: backgroundColor ?? Colors.blueAccent),
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [(shadowColor ?? Colors.white).withOpacity(0.1), (shadowColor ?? Colors.white).withOpacity(0.3)],
                  ),
                ),
              ),
              Text(
                label,
                style: TextStyle(
                  fontFamily: 'yekan bakh',
                  color: color ?? Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
