import 'package:flutter/material.dart';
import '../constants.dart';

class IconContent extends StatelessWidget {
  IconContent({required this.icons, required this.labels});
  late final IconData icons;
  late final String labels;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icons,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          labels,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
