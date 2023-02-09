import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_furniture_app/constants.dart';
import 'package:ui_furniture_app/models/product.dart';
import 'package:ui_furniture_app/screens/detail/components/chat_and_add_cart.dart';
import 'package:ui_furniture_app/screens/detail/components/list_of_color.dart';

import 'product_image.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
    required this.products,
  });
  final Product products;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      bottom: false,
      child: SingleChildScrollView(
        child: Column(
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // image product
                  Center(
                    child: Hero(
                      tag: '${products.id}',
                      child: ProductPoster(
                        image: products.image,
                      ),
                    ),
                  ),
                  // color change
                  ListOfColor(),
                  // title of product
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: kDefaultPadding / 2),
                    child: Text(
                      products.title,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                  // price
                  Text(
                    "\$${products.price}",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: kSecondaryColor,
                    ),
                  ),
                  // description
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
                    child: Text(
                      products.description,
                      style: TextStyle(color: kTextLightColor),
                    ),
                  ),
                  SizedBox(height: kDefaultPadding),
                ],
              ),
            ),
            // button order
            ChatAndAddToCart(),
          ],
        ),
      ),
    );
  }
}
