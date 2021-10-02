import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:story_app_flutter/config/app_colors.dart';
import 'package:story_app_flutter/widgets/app_icon_button.dart';

class FavoriteTitleRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Favourite',
            style: TextStyle(
                color: AppColors.white,
                fontSize: 46,
                fontFamily: 'Calibre-Semibold',
                letterSpacing: 1),
          ),
          AppIconButton(
            icon: FontAwesomeIcons.ellipsisH,
            color: AppColors.white,
            size: 20,
          ),
        ],
      ),
    );
  }
}
