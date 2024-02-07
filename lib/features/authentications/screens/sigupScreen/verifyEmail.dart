import 'package:e_cart/features/authentications/screens/loginScreen/login.dart';
import 'package:e_cart/features/authentications/screens/sigupScreen/SuccessScreen.dart';
import 'package:e_cart/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmail extends StatelessWidget {
  const VerifyEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () => Get.offAll(const LoginScreen()), icon: const Icon(Icons.clear))
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(Sizess.defaultSpace),
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
            
              children: [
                ///image
                
                ///Title and subtitle
                Text('verify your email address', style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
                const SizedBox(height: Sizess.spaceBtwItems,),
                 Text('shasna@gmail.com', style: Theme.of(context).textTheme.headlineSmall,textAlign: TextAlign.center,),
                 Text('congratulations! your Account Awaits: verify your Email to start shopping and Experience a world of Unrivaled Deals and Personalized Offers', style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center,),
                const SizedBox(height: Sizess.spaceBtsSections,),
        
                 ///button
                 SizedBox(width:double.infinity,child: ElevatedButton(onPressed: () => Get.to(SuccessScreen()), child: const Text('Continue'))),
                 const SizedBox(height: Sizess.spaceBtwItems,),
                 SizedBox(width: double.infinity, child: TextButton(onPressed: (){}, child: Text('Resend Email')))
              ],
            ),
          ),
        ),
      ),
    );
  }
}