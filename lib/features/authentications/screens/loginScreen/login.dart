import 'package:e_cart/common/styles/spacing_style.dart';
import 'package:e_cart/features/authentications/screens/sigupScreen/signup.dart';
import 'package:e_cart/features/authentications/screens/verifications/forgotPassword.dart';
import 'package:e_cart/utils/constants/colors.dart';
import 'package:e_cart/utils/constants/image_string.dart';
import 'package:e_cart/utils/constants/sizes.dart';
import 'package:e_cart/utils/constants/text_string.dart';
import 'package:e_cart/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctionss.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: SpacingStyle.paddingWithAppbarHeight,
          child: Column(
            children: [
              //logo title and subtitle
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    height: 150,
                    image: AssetImage(
                        dark ? Imagess.lightAppLogo : Imagess.darkAppLogo),
                  ),
                  Text(
                    'welcome back',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(
                    height: Sizess.sm,
                  ),
                  Text(
                    'Discover Limitless choices and unmatched convenience',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),

              //form
              Form(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: Sizess.spaceBtsSections),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Enter your email',
                          prefixIcon: Icon(Icons.email),
                        ),
                      ),
                      SizedBox(
                        height: Sizess.spaceBtwInputField,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.password),
                            labelText: 'Enter your password',
                            suffixIcon: Icon(Icons.remove_red_eye)),
                      ),
                      SizedBox(
                        height: Sizess.spaceBtwInputField / 2,
                      ),

                      //remember me & forgot password
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Checkbox(value: true, onChanged: (value) {}),
                              Text('remember me')
                            ],
                          ),

                          //forgotpassword
                          TextButton(
                              onPressed: () => Get.to(VerifyPassword()), child: Text('forgotpassword')),
                          SizedBox(
                            height: Sizess.spaceBtsSections,
                          )
                        ],
                      ),

                      //sing in button
                      SizedBox(width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            
                          }, child: const Text('signIn')),
                      ),
                      const SizedBox(
                        height: Sizess.spaceBtwItems,
                      ),
                    
                      //create an account button
                      SizedBox(width: double.infinity,
                        child: OutlinedButton(
                            onPressed: () => Get.to(const SignUp()), child: const Text('crete account')),
                      ),
                      const SizedBox(
                        height: Sizess.spaceBtsSections,
                      ),
                    ],
                  ),
                ),
              ),

              //divider
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

              //footer
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
        ),
      ),
    );
  }
}
