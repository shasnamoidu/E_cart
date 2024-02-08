import 'package:e_cart/utils/constants/colors.dart';
import 'package:e_cart/utils/constants/sizes.dart';
import 'package:e_cart/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class CategoryImage extends StatelessWidget {
  const CategoryImage({
    super.key, 
    required this.image, 
    required this.textColor, 
    required this.backgroundColor , 
    this.onTap, 
    required this.title,
  });
 
final String image, title;
final Color textColor;
final Color? backgroundColor;
final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: Sizess.spaceBtwItems),
        child: Column(
          children: [
            ////circular icons
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(Sizess.sm),
              decoration: BoxDecoration(
                color:backgroundColor,
                borderRadius:
                    BorderRadius.circular(100),
              ),
              child: Center(
                child: Image(
                  image: AssetImage(
                      image),
                  fit: BoxFit.cover,
                  color: textColor,
                ),
              ),
            ),
        
            ////Texts
            const SizedBox(
              height: Sizess.spaceBtwItems / 2,
            ),
            SizedBox(
              width: 55,
              child: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .apply(color: textColor),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
