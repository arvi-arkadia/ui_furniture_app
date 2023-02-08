import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_furniture_app/constants.dart';
import 'package:ui_furniture_app/screens/product/components/body.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      elevation: 0,
      title: Text("Dashboard"),
      centerTitle: false,
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("assets/icons/notification.svg"),
        ),
      ],
    );
  }
}
