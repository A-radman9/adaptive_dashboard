import 'package:adaptive_dashboard/utils/assets.dart';
import 'package:adaptive_dashboard/widgets/drawer/user_info.dart';
import 'package:flutter/material.dart';

import '../../models/user_info_model.dart';

class LatestTransactionList extends StatelessWidget {
  static List<UserInfoModel> model = [
    UserInfoModel(
      image: Assets.imagesAvatar2,
      title: 'Madrani Andi',
      subtitle: 'Madraniadi20@gmail',
    ),
    UserInfoModel(
      image: Assets.imagesAvatar1,
      title: 'Madrani Andi',
      subtitle: 'Madraniadi20@gmail',
    ),
    UserInfoModel(
      image: Assets.imagesAvatar2,
      title: 'Madrani Andi',
      subtitle: 'Madraniadi20@gmail',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: model.map(
          (e) {
            return IntrinsicWidth(
              child: UserInfo(model: e),
            );
          },
        ).toList(),
      ),
    );
  }
}
