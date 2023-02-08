import 'package:flutter/material.dart';
import 'package:ui_furniture_app/constants.dart';

class CateogoryList extends StatefulWidget {
  // we need stateful widget because we are gonna change some state on our category
  const CateogoryList({super.key});

  @override
  State<CateogoryList> createState() => _CateogoryListState();
}

class _CateogoryListState extends State<CateogoryList> {
  // by default first item will be selected
  int selectedIndex = 0;
  // list of category
  List categories = ['All', 'Sofa', 'Park Bench', 'ArmChair'];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      height: 30,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(
              left: kDefaultPadding,
              // at end item it add extra 20 right added
              right: index == categories.length - 1 ? kDefaultPadding : 0,
            ),
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            decoration: BoxDecoration(
              color: index == selectedIndex
                  ? Colors.white.withOpacity(.4)
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Text(
              categories[index],
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
