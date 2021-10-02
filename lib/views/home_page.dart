import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:story_app_flutter/config/app_colors.dart';
import 'package:story_app_flutter/config/size_config.dart';
import 'package:story_app_flutter/data/data.dart';
import 'components/cauresel_section.dart';
import 'components/favorite_title_row.dart';
import 'components/image_section.dart';
import 'components/lable_row.dart';
import 'components/latest_lable_row.dart';
import 'components/menu_row.dart';
import 'components/title_row.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double? currentPage = images.length - 1.0;

  @override
  Widget build(BuildContext context) {
    PageController pageController =
        PageController(initialPage: images.length - 1);

    pageController.addListener(() {
      setState(() {
        currentPage = pageController.page;
      });
    });

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [
            AppColors.darkBlue,
            AppColors.middleBlue,
          ],
          tileMode: TileMode.clamp,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MenuRow(),
              TitleRow(),
              LableRow(),
              CarouselSection(
                  currentPage: currentPage, pageController: pageController),
              FavoriteTitleRow(),
              LatestLabelRow(),
              SizeConfig.verticalSpace(15),
              ImageSection(),
              SizeConfig.verticalSpace(25),
            ],
          ),
        ),
      ),
    );
  }
}
