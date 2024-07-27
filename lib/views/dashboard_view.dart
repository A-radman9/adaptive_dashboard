import 'package:adaptive_dashboard/layouts/mobile_layout.dart';
import 'package:adaptive_dashboard/layouts/tablet_layout.dart';
import 'package:adaptive_dashboard/utils/size_config.dart';
import 'package:adaptive_dashboard/widgets/drawer/custom_drawer.dart';
import 'package:flutter/material.dart';

import '../layouts/desktop_layout.dart';
import '../widgets/adaptive_layout.dart';

class DashboardView extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      key: scaffoldKey,
      appBar: MediaQuery.sizeOf(context).width < SizeConfig.mobile
          ? AppBar(
              backgroundColor: Color(0xFFFAFAFA),
              leading: IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  scaffoldKey.currentState!.openDrawer();
                },
              ),
            )
          : null,
      drawer: CustomDrawer(),
      backgroundColor: Color(0xFFF7F9FA),
      body: AdaptiveLayout(
        mobileLayout: (context) => MobileLayout(),
        tabletLayout: (context) => TabletLayout(),
        desktopLayout: (context) => DesktopLayout(),
      ),
    );
  }
}
