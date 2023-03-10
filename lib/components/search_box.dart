import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_furniture_app/constants.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    super.key,
    required this.onChanged,
  });
  final ValueChanged onChanged;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(kDefaultPadding),
      padding: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 4,
      ),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.4),
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextField(
        onChanged: onChanged,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          icon: SvgPicture.asset("assets/icons/search.svg"),
          hintText: "Search",
          hintStyle: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
