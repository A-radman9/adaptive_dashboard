import 'package:adaptive_dashboard/utils/app_style.dart';
import 'package:adaptive_dashboard/widgets/card/dots_indicator.dart';
import 'package:adaptive_dashboard/widgets/card/my_cards_page_view.dart';
import 'package:flutter/material.dart';

class MyCardsSection extends StatefulWidget {

  @override
  State<MyCardsSection> createState() => _MyCardsSectionState();
}

class _MyCardsSectionState extends State<MyCardsSection> {
  late PageController pageController;
  int currentPageIndicator = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
    pageController.addListener(() {
      currentPageIndicator = pageController.page!.round();
      setState(() {

      });
    },);
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My card',
          style: AppStyle.styleSemiBold20(context)
        ),
        SizedBox(height: 20,),
        MyCardsPageView(pageController: pageController,),
        SizedBox(
          height: 20.0,
        ),
        DotsIndicator(currentPageIndicator: currentPageIndicator),
      ],
    );
  }
}
