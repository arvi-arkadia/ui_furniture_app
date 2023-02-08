import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_furniture_app/components/search_box.dart';
import 'package:ui_furniture_app/constants.dart';
import 'package:ui_furniture_app/screens/product/components/category_list.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Search Box
        SearchBox(
          onChanged: (value) {},
        ),
        // tab category
        CateogoryList(),
      ],
    );
  }
}
