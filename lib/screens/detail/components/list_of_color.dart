import 'package:flutter/material.dart';
import 'package:ui_furniture_app/constants.dart';
import 'package:ui_furniture_app/screens/detail/components/color_dot.dart';

class ListOfColor extends StatelessWidget {
  const ListOfColor({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ColorDot(
            fillColor: Color(0xff80989a),
            isSelected: true,
          ),
          ColorDot(
            fillColor: Color(0xffff5200),
          ),
          ColorDot(
            fillColor: kPrimaryColor,
          ),
        ],
      ),
    );
  }
}
