import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_cart/common/widgets/appdar/appbar.dart';
import 'package:e_cart/common/widgets/containers/PromoImage.dart';
import 'package:e_cart/common/widgets/containers/circularContainer.dart';
import 'package:e_cart/common/widgets/containers/curved_edges.dart';
import 'package:e_cart/common/widgets/containers/imageCategory.dart';
import 'package:e_cart/common/widgets/containers/search_container.dart';
import 'package:e_cart/common/widgets/containers/swipeContainer.dart';
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
                  height: 320,
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

                            ////cart bag
                            actions: [
                                CircularContainer(margin: null, onPressed: (){},
                                backgroundColor: Colorss.white,)
                              
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
                                  onTap: () {},
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
            ),

            ////body
            Padding(
              padding: const EdgeInsets.all(Sizess.defaultSpace),
              child: Column(
                children: [
                  CarouselSlider(
                    options: CarouselOptions(
                    viewportFraction: 1,
                  ),
                    items: [
                    PromoImage(
                    imageurl: "assets/images/Promo_banner/shoes.png",
                    applyImageRadius: true,
                    backgroundColor: Colorss.light,
                    isNetworkImage: false,
                    borderRadius: 20,
                    width: 300,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                  PromoImage(
                    imageurl: "assets/images/Promo_banner/zara.jpeg",
                    applyImageRadius: true,
                    backgroundColor: Colorss.light,
                    isNetworkImage: false,
                    borderRadius: 20,
                    width: 300,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                  PromoImage(
                    imageurl: "assets/images/Promo_banner/hoodie.jpg",
                    applyImageRadius: true,
                    backgroundColor: Colorss.light,
                    isNetworkImage: false,
                    borderRadius: 20,
                    width: 300,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                    ]
                  ),
                  SizedBox(height: Sizess.spaceBtwItems,),
                  Row(
                    children: [
                      for(int i =0; i<3; i++ )
                      const SwipeContainer(
                        width: 20,
                        height: 4,
                        margin: EdgeInsets.only(right: 10),
                        backgroundColor: Colors.blue,)
                      
                    ],
                  )
                   
                  
                  
                ],
              )

             
            ),
            
          ],
        ),
      ),
    );
  }
}

