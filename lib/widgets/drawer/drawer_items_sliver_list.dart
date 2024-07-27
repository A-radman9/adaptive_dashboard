import 'package:adaptive_dashboard/models/drawer_items_model.dart';
import 'package:adaptive_dashboard/utils/assets.dart';
import 'package:adaptive_dashboard/widgets/drawer/drawer_items_list_tile.dart';
import 'package:flutter/material.dart';

class DrawerItemsSliverList extends StatefulWidget {
  @override
  State<DrawerItemsSliverList> createState() => _DrawerItemsSliverListState();
}

class _DrawerItemsSliverListState extends State<DrawerItemsSliverList> {
  static List<DrawerItemsModel> model = [
    DrawerItemsModel(
      image: Assets.imagesDashboard,
      title: 'Dashboard',
    ),
    DrawerItemsModel(
      image: Assets.imagesMyTransaction,
      title: 'My Transaction',
    ),
    DrawerItemsModel(
      image: Assets.imagesStatistics,
      title: 'Statistics',
    ),
    DrawerItemsModel(
      image: Assets.imagesMyInvestment,
      title: 'My Investment',
    ),
    DrawerItemsModel(
      image: Assets.imagesWalletAccount,
      title: 'Wallet Account',
    ),
  ];
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: model.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: (){
            if(selected != index)
              {
                setState(() {
                  selected = index;
                });
              }
          },
          child: DrawerItemsListTile(
            model: model[index],
            isActive: selected == index,
          ),
        );
      },
    );
  }
}
