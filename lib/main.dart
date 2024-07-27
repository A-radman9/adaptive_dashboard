import 'package:adaptive_dashboard/views/dashboard_view.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    final logicalWidth = mediaQueryData.size.width;
    final pixelRatio = mediaQueryData.devicePixelRatio;
    final physicalWidth = logicalWidth * pixelRatio;

    print('Logical width: $logicalWidth');
    print('Device Pixel Ratio: $pixelRatio');
    print('Physical width: $physicalWidth');

    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      home: DashboardView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
