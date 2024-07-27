import 'package:adaptive_dashboard/models/drawer_items_model.dart';
import 'package:flutter/material.dart';

import 'active_and_inactive_drawer_items.dart';

class DrawerItemsListTile extends StatelessWidget {

  final DrawerItemsModel model;
  final bool isActive;

  const DrawerItemsListTile({super.key, required this.model, required this.isActive});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: isActive ? ActiveDrawerItem(model: model) : InActiveDrawerItem(model: model),
    );
  }
}

