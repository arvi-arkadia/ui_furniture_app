import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_furniture_app/constants.dart';

class ChatAndAddToCart extends StatelessWidget {
  const ChatAndAddToCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(kDefaultPadding),
      padding: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      decoration: BoxDecoration(
        color: Color(0xfffcbf1e),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            "assets/icons/chat.svg",
            height: 18,
          ),
          SizedBox(width: kDefaultPadding / 2),
          Text(
            "Chat",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          Spacer(),
          TextButton.icon(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/shopping-bag.svg"),
            label: Text(
              "Add to Cart",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
