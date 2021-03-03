import 'package:dlicing_figma/models/mentor.dart';
import 'package:dlicing_figma/shared/theme.dart';
import 'package:flutter/material.dart';

class MentorCard extends StatelessWidget {
  final Mentor mentor;

  const MentorCard({this.mentor});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(
                mentor.photo,
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: 6,
        ),
        Text(
          mentor.name,
          style: blackFontStyle.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          height: 6,
        ),
        Text(
          mentor.job,
          style: greyFontStyle.copyWith(
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
        Text(
          "${mentor.reviews.toString()} Reviews",
          style: greyFontStyle.copyWith(
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 40,
          width: MediaQuery.of(context).size.width,
          child: RaisedButton(
            elevation: 0,
            color: orangeColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              "Hire Me",
              style: whiteFontStyle,
            ),
            onPressed: () {},
          ),
        )
      ],
    );
  }
}
