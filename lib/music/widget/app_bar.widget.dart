import 'package:flutter/material.dart';
import 'package:granny_go/music/style/main_colors.dart';

class MainAppBar extends AppBar {
  final String titleText;
  final bool isMainPage;
  final BuildContext context;

  MainAppBar(@required this.titleText, this.isMainPage, this.context)
      : super(
          centerTitle: true,
          backgroundColor: MainColors.appBarGradientStart,
          title: Text(
            titleText,
            style: TextStyle(
              color: Colors.white,
              fontFamily: "Roboto-Black",
            ),
          ),
          elevation: 0.0,
        );
}
