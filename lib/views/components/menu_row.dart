import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:story_app_flutter/config/app_colors.dart';
import 'package:story_app_flutter/widgets/app_icon_button.dart';

class MenuRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: 12.0, right: 12.0, top: 30.0, bottom: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppIconButton(icon: Icons.menu, color: AppColors.white),
          AppIconButton(icon: Icons.search, color: AppColors.white),
        ],
      ),
    );
  }
}
