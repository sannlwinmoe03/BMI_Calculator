import 'package:flutter/material.dart';
import '../constants.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({required this.icon, required this.onPressed});

  final IconData icon;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      child: Icon(icon),
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      fillColor: Color(0xFF4c4f5e),
    );
  }
}
