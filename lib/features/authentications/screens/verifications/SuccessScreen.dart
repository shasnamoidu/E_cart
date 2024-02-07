import 'package:e_cart/features/authentications/screens/loginScreen/login.dart';
import 'package:e_cart/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

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
                Text('your Account Successfully created!', style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
                const SizedBox(height: Sizess.spaceBtwItems,),
                 
                 Text('Welcome to your ultimate Shopping Destination: Your Account is Created, Unieast the joy of Seamless Online Shopping!', style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center,),
                const SizedBox(height: Sizess.spaceBtsSections,),
        
                 ///button
                 SizedBox(width:double.infinity,child: ElevatedButton(onPressed: () => Get.to(LoginScreen()), child: const Text('Continue'))),
                 const SizedBox(height: Sizess.spaceBtwItems,),
                 
              ],
            ),
          ),
        ),
      ),
    );
  }
}