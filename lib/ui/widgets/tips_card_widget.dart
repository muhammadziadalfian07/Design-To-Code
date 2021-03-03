import 'package:dlicing_figma/models/tips.dart';
import 'package:dlicing_figma/shared/theme.dart';
import 'package:flutter/material.dart';

class TipsCard extends StatelessWidget {
  final Tips tips;
  final int index;
  TipsCard({
    this.index,
    this.tips,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 131,
      width: 250,
      padding: EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 10,
      ),
      margin: EdgeInsets.only(
        left: index == 0 ? defaultMargin : 8,
        right: index == mockTips.length - 1 ? defaultMargin : 0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          12,
        ),
        image: DecorationImage(
          image: AssetImage(
            tips.photo,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Text(
          tips.tips,
          style: whiteFontStyle.copyWith(
            fontWeight: FontWeight.w600,
            fontSize: 14,
          ),
          maxLines: 2,
          overflow: TextOverflow.clip,
        ),
      ),
    );
  }
}
