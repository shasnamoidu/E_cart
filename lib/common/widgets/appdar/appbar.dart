import 'package:e_cart/utils/constants/sizes.dart';
import 'package:e_cart/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Appbar extends StatelessWidget implements PreferredSizeWidget {
  const Appbar({
    super.key, 
    this.title, 
    this.showBackarrow = false, 
    this.leadingicon, 
    this.actions, 
    this.leadingonPressed

    });
    final Widget? title;
    final bool showBackarrow;
    final IconData? leadingicon;
    final List<Widget>? actions;
    final VoidCallback? leadingonPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Sizess.md),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: showBackarrow 
           ? IconButton(onPressed: () => Get.back(), icon: const Icon(Icons.arrow_left)) 
           : IconButton(onPressed: leadingonPressed, icon: Icon(leadingicon)),
        title: title,
        actions: actions,
      ),
    );
  }
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(DeviceUtilss.getAppBarHeight());
}