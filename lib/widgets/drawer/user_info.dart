import 'package:adaptive_dashboard/models/user_info_model.dart';
import 'package:adaptive_dashboard/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UserInfo extends StatelessWidget {

  final UserInfoModel model;

  const UserInfo({super.key, required this.model});
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFFFAFAFA),
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(model.image),
        title: FittedBox(alignment: AlignmentDirectional.centerStart, fit: BoxFit.scaleDown, child: Text(model.title,style: AppStyle.styleSemiBold16(context),)),
        subtitle: FittedBox(alignment: AlignmentDirectional.centerStart, fit: BoxFit.scaleDown, child: Text(model.subtitle,style: AppStyle.styleRegular12(context),)),

      ),
    );
  }
}
