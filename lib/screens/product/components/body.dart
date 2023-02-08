import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_furniture_app/components/search_box.dart';
import 'package:ui_furniture_app/constants.dart';
import 'package:ui_furniture_app/models/product.dart';
import 'package:ui_furniture_app/screens/detail/detail_screen.dart';
import 'package:ui_furniture_app/screens/product/components/category_list.dart';
import 'package:ui_furniture_app/screens/product/components/product_cards.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: [
          // Search Box
          SearchBox(
            onChanged: (value) {},
          ),
          // tab category
          CateogoryList(),
          // item
          SizedBox(height: kDefaultPadding / 2),
          Expanded(
            child: Stack(
              children: [
                // bg color
                Container(
                  margin: EdgeInsets.only(top: 70),
                  decoration: BoxDecoration(
                    color: kBackgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                ),
                // items
                ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (context, index) => ProductCards(
                    itemIndex: index,
                    product: products[index],
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (contex) => DetailProduct(),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
