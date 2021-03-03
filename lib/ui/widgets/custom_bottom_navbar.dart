import 'package:dlicing_figma/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int index) onTap;
  const CustomBottomNavBar({
    Key key,
    this.onTap,
    this.selectedIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: MediaQuery.of(context).size.width,
      color: whiteColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {
              if (onTap != null) {
                onTap(0);
              }
            },
            child: Container(
              child: selectedIndex == 0
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Image.asset(
                              "assets/home_solid.png",
                              width: 24,
                              height: 24,
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              "Home",
                              style: blackFontStyle.copyWith(
                                color: mainColor,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Container(
                          height: 2,
                          width: 30,
                          decoration: BoxDecoration(
                            color: mainColor,
                          ),
                        )
                      ],
                    )
                  : Image.asset(
                      "assets/home_grey.png",
                      width: 24,
                      height: 24,
                    ),
            ),
          ),
          GestureDetector(
            onTap: () {
              if (onTap != null) {
                onTap(1);
              }
            },
            child: Container(
              child: selectedIndex == 1
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Image.asset(
                              "assets/save_solid.png",
                              width: 24,
                              height: 24,
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              "Save",
                              style: blackFontStyle.copyWith(
                                color: mainColor,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Container(
                          height: 2,
                          width: 30,
                          decoration: BoxDecoration(
                            color: mainColor,
                          ),
                        )
                      ],
                    )
                  : Image.asset(
                      "assets/save_grey.png",
                      width: 24,
                      height: 24,
                    ),
            ),
          ),
          GestureDetector(
            onTap: () {
              if (onTap != null) {
                onTap(2);
              }
            },
            child: Container(
              child: selectedIndex == 2
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Image.asset(
                              "assets/chat_solid.png",
                              width: 24,
                              height: 24,
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              "Chat",
                              style: blackFontStyle.copyWith(
                                color: mainColor,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Container(
                          height: 2,
                          width: 30,
                          decoration: BoxDecoration(
                            color: mainColor,
                          ),
                        )
                      ],
                    )
                  : Image.asset(
                      "assets/chat_grey.png",
                      width: 24,
                      height: 24,
                    ),
            ),
          ),
          GestureDetector(
            onTap: () {
              if (onTap != null) {
                onTap(3);
              }
            },
            child: Container(
              child: selectedIndex == 3
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Image.asset(
                              "assets/profile_solid.png",
                              width: 24,
                              height: 24,
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              "Save",
                              style: blackFontStyle.copyWith(
                                color: mainColor,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Container(
                          height: 2,
                          width: 30,
                          decoration: BoxDecoration(
                            color: mainColor,
                          ),
                        )
                      ],
                    )
                  : Image.asset(
                      "assets/profile_grey.png",
                      width: 24,
                      height: 24,
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
