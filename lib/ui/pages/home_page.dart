import 'package:dlicing_figma/models/category.dart';
import 'package:dlicing_figma/models/mentor.dart';
import 'package:dlicing_figma/models/tips.dart';
import 'package:dlicing_figma/shared/theme.dart';
import 'package:dlicing_figma/ui/widgets/category_card_widget.dart';
import 'package:dlicing_figma/ui/widgets/mentor_card_widget.dart';
import 'package:dlicing_figma/ui/widgets/tips_card_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Category selectedCategory;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: mainColor,
          ),
          SafeArea(
            child: Container(
              color: mainColor,
            ),
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Note: Header
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: defaultMargin,
                      vertical: defaultMargin,
                    ),
                    color: mainColor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/PICT1.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Good Moring",
                                  style: greyFontStyle.copyWith(
                                    fontSize: 12,
                                  ),
                                ),
                                Text(
                                  "Bimo Semesta",
                                  style: whiteFontStyle.copyWith(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Icon(
                          Icons.notifications,
                          size: 25,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                  // Note: Body
                  Container(
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(
                            defaultMargin,
                            defaultMargin,
                            defaultMargin,
                            0,
                          ),
                          child: Row(
                            children: [
                              Flexible(
                                flex: 1,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Container(
                                    height: 50,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        fillColor: Color(0xffF3F4F8),
                                        filled: true,
                                        border: InputBorder.none,
                                        hintText: "Find your favorite mentor",
                                        hintStyle: greyFontStyle,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: orangeColor,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Icon(
                                  Icons.search,
                                  color: whiteColor,
                                  size: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          height: 35,
                          width: double.infinity,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: mockCategory.length,
                            itemBuilder: (context, index) {
                              return CategoryCard(
                                category: mockCategory[index],
                                index: index,
                                isSelected:
                                    selectedCategory == mockCategory[index],
                                onTap: () {
                                  setState(() {
                                    selectedCategory = mockCategory[index];
                                  });
                                },
                              );
                            },
                          ),
                        ),
                        SizedBox(
                          height: defaultMargin,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: defaultMargin,
                          ),
                          child: Text(
                            "Top Mentor",
                            style: blackFontStyle.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 22,
                        ),
                        Container(
                          height: 194,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: mockMentor.length,
                            itemBuilder: (context, index) {
                              return Container(
                                height: 194,
                                width: 160,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 10,
                                ),
                                margin: EdgeInsets.only(
                                  left: index == 0 ? defaultMargin : 8,
                                  right: index == mockMentor.length - 1
                                      ? defaultMargin
                                      : 0,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Color(0xFFF3F4F8),
                                ),
                                child: MentorCard(
                                  mentor: mockMentor[index],
                                ),
                              );
                            },
                          ),
                        ),
                        SizedBox(
                          height: defaultMargin,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: defaultMargin,
                          ),
                          child: Text(
                            "Mentor Tips",
                            style: blackFontStyle.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          height: 131,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: mockTips.length,
                            itemBuilder: (context, index) {
                              return TipsCard(
                                tips: mockTips[index],
                                index: index,
                              );
                            },
                          ),
                        ),
                        SizedBox(
                          height: 100,
                        ),
                      ],
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
