import 'package:flutter/material.dart';
import 'package:ui_furniture_app/constants.dart';

class ProductPoster extends StatelessWidget {
  const ProductPoster({
    super.key,
    required this.image,
  });
  final String image;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
      height: size.width * 0.8,
      // color: Colors.black,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          // bg color
          Container(
            height: size.height * .7,
            width: size.width * .7,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
          ),
          // img product
          Image.asset(
            image,
            width: size.width * .75,
            height: size.height * .75,
            fit: BoxFit.cover,
          )
        ],
      ),
    );
  }
}
