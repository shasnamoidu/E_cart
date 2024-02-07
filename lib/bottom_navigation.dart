import 'package:e_cart/features/authentications/screens/home/homePage.dart';
import 'package:e_cart/utils/constants/colors.dart';
import 'package:e_cart/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(NavigationController());
    final dark = HelperFunctionss.isDarkMode(context);

    return  Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) => controller.selectedIndex.value = index,
          backgroundColor: dark ? Colorss.black : Colorss.white,
          indicatorColor: dark ? Colorss.white.withOpacity(0.1) : Colorss.black.withOpacity(0.1),
         destinations: const [
         NavigationDestination(icon: Icon(Icons.home), label: 'home'),
         NavigationDestination(icon: Icon(Icons.shopping_bag_outlined), label: 'store'),
         NavigationDestination(icon: Icon(Icons.favorite_border), label: 'Wishlist'),
         NavigationDestination(icon: Icon(Icons.person_rounded), label: 'profile'), 

        ]),
      ),
     body:Obx(() => controller.screens[controller.selectedIndex.value] ,)
    );
  }
}

class NavigationController extends GetxController{
  final Rx<int> selectedIndex = 0.obs;

  final screens = [const HomeScreen(), Container(color: Colors.amber,),Container(color: Colors.black,),Container(color: Colors.blue,)];
}