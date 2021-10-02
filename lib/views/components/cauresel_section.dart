import 'package:flutter/cupertino.dart';
import 'package:story_app_flutter/data/data.dart';
import 'package:story_app_flutter/widgets/card_scroll_widget.dart';

class CarouselSection extends StatelessWidget {
  final double? currentPage;
  final PageController pageController;

  const CarouselSection(
      {required this.currentPage, required this.pageController});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CardScrollWidget(
          currentPage: currentPage,
          widgetAspectRatio: (12.0 / 16.0) * 1.2,
        ),
        Positioned.fill(
            child: PageView.builder(
          itemCount: images.length,
          controller: pageController,
          reverse: true,
          itemBuilder: (context, index) {
            return Container();
          },
        )),
      ],
    );
  }
}
