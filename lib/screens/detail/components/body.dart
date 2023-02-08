import 'package:flutter/material.dart';
import 'package:ui_furniture_app/constants.dart';

import 'product_image.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          width: double.infinity,
          // height: 200,
          // bg product
          decoration: BoxDecoration(
            color: kBackgroundColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
          ),
          child: Column(
            children: [
              // image product
              ProductPoster(
                image: 'assets/images/Item_2.png',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
