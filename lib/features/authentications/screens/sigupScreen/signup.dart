import 'package:e_cart/features/authentications/screens/verifications/verifyEmail.dart';
import 'package:e_cart/utils/constants/colors.dart';
import 'package:e_cart/utils/constants/image_string.dart';
import 'package:e_cart/utils/constants/sizes.dart';
import 'package:e_cart/utils/constants/text_string.dart';
import 'package:e_cart/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctionss.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Sizess.defaultSpace),
          child: Column(
            children: [
              //Title
              Text("Let'screate an account",style: Theme.of(context).textTheme.headlineMedium,),
              const SizedBox(height: Sizess.spaceBtsSections,),
              //form
              Form(child: Column(
                children: [
                  Row(
                    children: [
                      
                         Expanded(
                           child: TextFormField(
                              decoration: InputDecoration(
                                hintText: 'first name',
                                prefixIcon: Icon(Icons.person),
                              ),
                           ),
                         ),
                         SizedBox(
                            width: Sizess.spaceBtwInputField,
                          ),
                         Expanded(
                           child: TextFormField(
                              decoration: InputDecoration(
                                hintText: 'Last name',
                                prefixIcon: Icon(Icons.person),
                              ),
                           ),
                         )
                    
                    ],
                    
                  ),
                  const SizedBox(
                    height: Sizess.spaceBtwInputField,
                  ),
                  const TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.person),
                            labelText: 'Username',
                            ),
                      ),
                      const SizedBox(
                        height: Sizess.spaceBtwInputField / 2,
                      ),
                    const TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email),
                            labelText: 'E-mail',
                            ),
                      ),
                      const SizedBox(
                        height: Sizess.spaceBtwInputField / 2,
                      ),
                      const TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.phone),
                            labelText: 'Phone number',
                            ),
                      ),
                      const SizedBox(
                        height: Sizess.spaceBtwInputField / 2,
                      ),
                      const TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock),
                            labelText: 'Password',
                            suffixIcon: Icon(Icons.remove_red_eye)
                            ),
                      ),
                      const SizedBox(
                        height: Sizess.spaceBtwInputField / 2,
                      ),
                ],
              )
              ),
              SizedBox(height: Sizess.spaceBtwInputField / 2,),

              //terms and condition chweck box
               Row(mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Row(
                     children: [
                       Checkbox(value: true, onChanged: (value) {}),
                       Text.rich(
                        TextSpan(children: [
                          TextSpan(text: 'i agree to ' , style: Theme.of(context).textTheme.bodySmall ),
                          TextSpan(text: 'privacy policy ',style: Theme.of(context).textTheme.bodySmall!.apply(
                            color:  dark ? Colorss.white :  Colorss.primary,
                            decoration: TextDecoration.underline,
                            decorationColor:  dark ? Colorss.white : Colorss.primary
                          ) ),
                          TextSpan(text: ' and ', style: Theme.of(context).textTheme.bodySmall ),
                          TextSpan(text: 'TermsOfUse',style: Theme.of(context).textTheme.bodySmall!.apply(
                            color:  dark ? Colorss.white :  Colorss.primary,
                            decoration: TextDecoration.underline,
                            decorationColor:  dark ? Colorss.white : Colorss.primary
                          ) ),

                        ])
                       )
                     ],
                   ),
                 ],
               ),
               SizedBox(width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () => Get.to(VerifyEmail()), child: const Text('Create Account')),
                      ),
                      const SizedBox(
                        height: Sizess.spaceBtwItems,
                      ),
                      Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                      child: Divider(
                    color: dark ? Colorss.dark : Colorss.grey,
                    thickness: 0.5,
                    indent: 60,
                    endIndent: 5,
                  )),
                  const Text('Or sign in with'),
                  Flexible(
                      child: Divider(
                    color: dark ? Colorss.dark : Colorss.grey,
                    thickness: 0.5,
                    indent: 5,
                    endIndent: 60,
                  ))
                ],
              ),
              SizedBox(height: Sizess.spaceBtwItems,),
            
            ///social buttons
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                        border: Border.all(color: Colorss.grey),
                        borderRadius: BorderRadius.circular(100)),
                    child: IconButton(
                        onPressed: () {
                          
                        },
                        icon: Image(
                            width: Sizess.iconMd,
                            height: Sizess.iconMd,
                            image: AssetImage(Imagess.google))),
                ),
                SizedBox(width: Sizess.spaceBtwItems,),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colorss.grey),
                        borderRadius: BorderRadius.circular(100)),
                    child: IconButton(
                        onPressed: () {},
                        icon: Image(
                            width: Sizess.iconMd,
                            height: Sizess.iconMd,
                            image: AssetImage(Imagess.facebook))),

                  )
              ],
            )
            ],
          ),
        )
         ),
    );
  }
}