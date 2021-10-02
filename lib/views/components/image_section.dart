import 'package:flutter/cupertino.dart';

class ImageSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 18.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset("assets/images/image_02.jpg",
            width: 296.0, height: 222.0),
      ),
    );
  }
}
