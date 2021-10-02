import 'package:flutter/cupertino.dart';
import 'package:story_app_flutter/config/app_colors.dart';
import 'package:story_app_flutter/config/size_config.dart';

class LatestLabelRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: AppColors.blueAccent,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 22.0, vertical: 6.0),
              child: Text(
                'Latest',
                style: TextStyle(color: AppColors.white),
              ),
            ),
          ),
          SizeConfig.horizontalSpace(15),
          Text(
            '9+ Stories',
            style: TextStyle(color: AppColors.blueAccent),
          ),
        ],
      ),
    );
  }
}
