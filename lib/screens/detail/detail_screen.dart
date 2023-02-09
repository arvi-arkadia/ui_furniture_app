import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_furniture_app/constants.dart';
import 'package:ui_furniture_app/models/product.dart';
import 'package:ui_furniture_app/screens/detail/components/body.dart';

class DetailProduct extends StatelessWidget {
  const DetailProduct({
    super.key,
    required this.products,
  });
  final Product products;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: buildAppBar(context),
      body: Body(
        products: products,
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: kBackgroundColor,
      elevation: 0,
      leading: IconButton(
        padding: EdgeInsets.only(left: kDefaultPadding),
        onPressed: () {
          Navigator.pop(context);
        },
        icon: SvgPicture.asset("assets/icons/back.svg"),
      ),
      centerTitle: false,
      title: Text(
        "Back".toUpperCase(),
        style: Theme.of(context).textTheme.bodyText2,
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("assets/icons/cart_with_item.svg"),
        ),
      ],
    );
  }
}
