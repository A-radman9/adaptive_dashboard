import 'package:adaptive_dashboard/models/user_info_model.dart';
import 'package:adaptive_dashboard/utils/app_style.dart';
import 'package:adaptive_dashboard/utils/assets.dart';
import 'package:adaptive_dashboard/widgets/drawer/drawer_items_sliver_list.dart';
import 'package:adaptive_dashboard/widgets/drawer/user_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * .7,
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfo(
              model: UserInfoModel(
                image: Assets.imagesAvatar0,
                title: 'Lekan Okeowo',
                subtitle: 'demo@gmail.com',
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8.0,
            ),
          ),
          DrawerItemsSliverList(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 20,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: ListTile(
                    leading: SvgPicture.asset(Assets.imagesSetting),
                    title: Text('Setting system',style: AppStyle.styleRegular16(context),),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: ListTile(
                    leading: SvgPicture.asset(Assets.imagesLogout),
                    title: Text('Logout Account',style: AppStyle.styleRegular16(context),),
                  ),
                ),
                Flexible(
                  child: SizedBox(
                    height: 20,
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
