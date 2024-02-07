import 'package:e_cart/features/authentications/screens/verifications/reset_password.dart';
import 'package:e_cart/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyPassword extends StatelessWidget {
  const VerifyPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Sizess.defaultSpace),
          child: Column(
          
            children: [
              ///image
              
              ///Title and subtitle
              Text('Forgot Password', style: Theme.of(context).textTheme.headlineMedium,),
              const SizedBox(height: Sizess.spaceBtwItems,),
               
               Text("Don't worry something people can forgot too. Enter your Email and we send you a password reset link", style: Theme.of(context).textTheme.labelMedium,),
              const SizedBox(height: Sizess.spaceBtsSections,),

              //textfield
              const TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email_outlined),
                            labelText: 'E-Mail',
                            ),
                      ),
                      const SizedBox(
                        height: Sizess.spaceBtsSections
                      ),
      
               ///button
               SizedBox(width:double.infinity,child: ElevatedButton(onPressed: () => Get.to(PasswordReset()), child: const Text('Submit'))),
               const SizedBox(height: Sizess.spaceBtwItems,),
               
            ],
          ),
        ),
      ),
    );
  }
}