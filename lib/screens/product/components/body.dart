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
              ProductCards(),
            ],
          ),
        ),
      ],
    );
  }
}

class ProductCards extends StatelessWidget {
  const ProductCards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      // color: Colors.blueAccent,
      height: 160,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          // bg item
          Container(
            height: 136,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22),
              color: kBlueColor,
              boxShadow: [kDefaultShadow],
            ),
            child: Container(
              // top bg item
              margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(22),
              ),
            ),
          ),
          // product item
          Positioned(
            top: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              height: 160,
              // img is square but we add extra 20+20 padding thats wht width is 200
              width: 200,
              // img produtcts
              child: Image.asset(
                "assets/images/Item_1.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          // product title n price
          Positioned(
            bottom: 0,
            left: 0,
            child: SizedBox(
              height: 136,
              // our img take 200 width, thats we set our total width - 200
              width: size.width - 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(),
                  // title
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    child: Text(
                      "Classic Leather Arm Chair",
                      style: Theme.of(context).textTheme.button,
                    ),
                  ),
                  // it use available space
                  Spacer(),
                  // price
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: kDefaultPadding * 1.5,
                      vertical: kDefaultPadding / 4,
                    ),
                    // price tag
                    decoration: BoxDecoration(
                      color: kSecondaryColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(22),
                        topRight: Radius.circular(22),
                      ),
                    ),
                    child: Text(
                      "\$ 50",
                      style: Theme.of(context).textTheme.button,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
