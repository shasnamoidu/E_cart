import 'package:e_cart/features/authentications/screens/loginScreen/login.dart';
import 'package:e_cart/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PasswordReset extends StatelessWidget {
  const PasswordReset({super.key});

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
                Text('Password Reset Email Sent', style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
                const SizedBox(height: Sizess.spaceBtwItems,),
                Text('shasna@gmail.com', style: Theme.of(context).textTheme.headlineSmall,textAlign: TextAlign.center,),
                 const SizedBox(height: Sizess.spaceBtwItems,),
                 Text("Your Account Security is our privacy We've Sent you a Secure link to Safely change your password and keep your Account Protected", style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center,),
                const SizedBox(height: Sizess.spaceBtsSections,),
        
                 ///button
                 SizedBox(width:double.infinity,child: ElevatedButton(onPressed: () {}, child: const Text('Done'))),
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