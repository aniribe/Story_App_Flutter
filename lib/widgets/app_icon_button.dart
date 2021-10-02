import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:story_app_flutter/config/app_colors.dart';

class AppIconButton extends StatelessWidget {
  final IconData icon;
  final Color color;
  final double size;

  const AppIconButton(
      {required this.icon, required this.color, this.size = 30});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        icon,
        color: color,
        size: size,
      ),
      onPressed: () {},
    );
  }
}
