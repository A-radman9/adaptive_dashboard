import 'package:adaptive_dashboard/widgets/custom_background_container.dart';
import 'package:flutter/material.dart';

import 'income_body.dart';
import 'income_header.dart';

class Income extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        children: [
          IncomeHeader(),
          SizedBox(
            height: 16,
          ),
          IncomeBody(),
        ],
      ),
    );
  }
}
