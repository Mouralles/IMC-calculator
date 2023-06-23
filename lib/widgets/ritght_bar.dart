import 'package:imc_calculator/constants/app_constants.dart';
import 'package:flutter/material.dart';

class LeftBar extends StatelessWidget {
  final double barWidget;

  const LeftBar({super.key, required this.barWidget});




  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 25,
          width: barWidget,
          decoration:  BoxDecoration(
            borderRadius:  const BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            ),
            color:  Colors.yellow
          ),
        ),
      ],
    );
  }
}