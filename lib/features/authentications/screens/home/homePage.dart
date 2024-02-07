import 'package:e_cart/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipPath(
              
              child: Container(color: Colorss.primary,
              // padding: const EdgeInsets.all(0),
              child: SizedBox(
                height: 350,
                child: Stack(
                  children: [
                    Positioned(top: -100, left: -250,
                      child: Container(
                        width: 400,
                        height: 300,
                        padding: const EdgeInsets.all(0),
                        decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(300),
                                    color: Colors.white.withOpacity(0.1)
                                  ),
                      ),
                    ),
                     Positioned(top: 200, right: -250,
                       child: Container(
                        width: 400,
                        height: 300,
                        padding: const EdgeInsets.all(0),
                        decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(300),
                                     color: Colors.white.withOpacity(0.1)
                                   ),
                                       ),
                     ),
                     Column(
                      children: [
                        AppBar()
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