import 'package:e_cart/common/widgets/appdar/appbar.dart';
import 'package:e_cart/common/widgets/containers/curved_edges.dart';
import 'package:e_cart/common/widgets/containers/imageCategory.dart';
import 'package:e_cart/common/widgets/containers/search_container.dart';
import 'package:e_cart/common/widgets/text/sectionHeader.dart';
import 'package:e_cart/utils/constants/colors.dart';
import 'package:e_cart/utils/constants/sizes.dart';
import 'package:e_cart/utils/device/device_utility.dart';
import 'package:e_cart/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //// header
            ClipPath(
              clipper: CustomCurvedEdges(),
              child: Container(
                color: Colorss.primary,
                // padding: const EdgeInsets.all(0),
                child: SizedBox(
                  height: 400,
                  child: Stack(
                    children: [
                      Positioned(
                        top: -100,
                        left: -250,
                        child: Container(
                          width: 400,
                          height: 300,
                          padding: const EdgeInsets.all(0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(300),
                              color: Colors.white.withOpacity(0.1)),
                        ),
                      ),
                      Positioned(
                        top: 200,
                        right: -250,
                        child: Container(
                          width: 400,
                          height: 300,
                          padding: const EdgeInsets.all(0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(300),
                              color: Colors.white.withOpacity(0.1)),
                        ),
                      ),
                      Column(
                        children: [
                          //appbar
                          Appbar(
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Good day for shopping',
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelLarge!
                                      .apply(color: Colors.black),
                                ),
                                Text(
                                  'shasna moidu',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineSmall!
                                      .apply(color: Colors.black),
                                ),
                              ],
                            ),
                            actions: [
                              Stack(
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.shopping_cart)),
                                  Positioned(
                                    right: 0,
                                    child: Container(
                                      width: 18,
                                      height: 18,
                                      decoration: BoxDecoration(
                                          color: Colorss.black.withOpacity(0.5),
                                          borderRadius:
                                              BorderRadius.circular(100)),
                                      child: Center(
                                        child: Text(
                                          '2',
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelLarge!
                                              .apply(
                                                  color: Colorss.white,
                                                  fontSizeFactor: 0.9),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),

                          ////searchbar
                          const searchContainer(
                            text: 'search in store',
                            showBackground: true,
                          ),
                          const SizedBox(
                            height: Sizess.defaultSpace,
                          ),

                          ////categories heading
                          const SectionHeading(
                              title: 'popular categories',
                              buttonTitle: 'view All',
                              showActionButton: false),
                          const SizedBox(
                            height: Sizess.spaceBtwItems,
                          ),

                          ////scrollable categories
                          SizedBox(
                            height: 80,
                            child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: 6,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (_, index) {
                                return CategoryImage(
                                  image: 'assets/logos/facebook_logo.png',
                                  textColor: Colorss.white,
                                  title: 'shoes catgry',
                                  backgroundColor: null,
                                  onTap: (){},
                                );
                              },
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
