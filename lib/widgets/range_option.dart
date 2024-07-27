import 'package:flutter/material.dart';

import '../utils/app_style.dart';

class RangeOption extends StatelessWidget {
  const RangeOption({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: Color(0xFFF1F1F1)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Row(
        children: [
          Text('Monthly', style: AppStyle.styleMedium16(context),),
          SizedBox(
            width: 18.0,
          ),
          Transform.rotate(
            angle: -1.5708,
            child: Icon(Icons.arrow_back_ios_new_outlined,),),
        ],
      ),
    );
  }
}