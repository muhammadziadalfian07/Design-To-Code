import 'package:dlicing_figma/models/category.dart';
import 'package:dlicing_figma/shared/theme.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatefulWidget {
  final Category category;
  final int index;
  final Function onTap;
  final bool isSelected;

  CategoryCard({
    this.category,
    this.index,
    this.onTap,
    this.isSelected = false,
  });

  @override
  _CategoryCardState createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.onTap();
      },
      child: Container(
        margin: EdgeInsets.only(
          left: widget.index == 0 ? 30 : 12,
          right: widget.index == mockCategory.length - 1 ? 30 : 0,
        ),
        height: 35,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xffF3F4F8),
          ),
          borderRadius: BorderRadius.circular(8),
          color: widget.isSelected ? orangeColor : Colors.white,
        ),
        child: Text(
          widget.category.name,
          style: greyFontStyle.copyWith(
            fontSize: 10,
            color: widget.isSelected ? Colors.white : greyColor,
          ),
        ),
      ),
    );
  }
}
