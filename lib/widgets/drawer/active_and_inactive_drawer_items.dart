import 'package:adaptive_dashboard/models/drawer_items_model.dart';
import 'package:adaptive_dashboard/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';



class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({
    super.key,
    required this.model,
  });

  final DrawerItemsModel model;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(model.image),
      title: Text(model.title, style: AppStyle.styleRegular16(context),),
    );
  }
}

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({
    super.key,
    required this.model,
  });

  final DrawerItemsModel model;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(model.image),
      title: Text(model.title, style: AppStyle.styleBold16(context),),
      trailing:  Container(
        width: 3.27,
        decoration: BoxDecoration(color: Color(0xFF4EB7F2)),
      ),
    );
  }
}
