import 'package:e_cart/utils/constants/colors.dart';
import 'package:e_cart/utils/constants/sizes.dart';
import 'package:e_cart/utils/device/device_utility.dart';
import 'package:e_cart/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class searchContainer extends StatelessWidget {
  const searchContainer({
    super.key, 
    required this.text, 
    this.icon = Icons.search, 
    required this.showBackground , 
     this.showBorder = true ,
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctionss.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Sizess.defaultSpace),
      child: Container(
        width: DeviceUtilss.getScreenwidth(context),
        padding: EdgeInsets.all(Sizess.md),
        decoration: BoxDecoration(
          color: showBackground ? Colors.white : Colors.transparent,
          borderRadius: BorderRadius.circular(Sizess.cardRadiusLg),
          border: showBorder ?  Border.all(color: Colorss.grey) : null
        ),
        child: Row(
          children: [Icon(icon,),
          SizedBox(width: Sizess.spaceBtwItems,),
          Text(text, style: Theme.of(context).textTheme.bodySmall,)
          ],
        ),
      ),
    );
  }
}