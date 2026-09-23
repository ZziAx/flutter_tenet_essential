import 'package:erp_finalprice/core/others/shadow_store/shadow_store.dart';
import 'package:erp_finalprice/core/widgets/behaviors/hover_tracker.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ShadowButton extends StatelessWidget {
  Color shadowColor;
  Function onClicked;
  Widget child;
  ShadowButton({super.key,required this.child, required this.shadowColor, required this.onClicked});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>onClicked(),
      child: Container(
        width: 100,
        height: 28,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: shadowColor,
          boxShadow: ShadowStore.shadowV3(shadowColor),
          border: Border.all(
            color:  Colors.transparent,
            width: 2,
          ),
        ),
        child: child
      ),
    );
  }
}
