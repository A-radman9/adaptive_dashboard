import 'package:adaptive_dashboard/utils/size_config.dart';
import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  final WidgetBuilder mobileLayout, tabletLayout, desktopLayout;

  AdaptiveLayout(
      {super.key,
      required this.mobileLayout,
      required this.tabletLayout,
      required this.desktopLayout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if(constraints.maxWidth < SizeConfig.mobile)
          return mobileLayout(context);
        else if(constraints.maxWidth < SizeConfig.tablet)
          return tabletLayout(context);
        else
          return desktopLayout(context);
      },
    );
  }
}
