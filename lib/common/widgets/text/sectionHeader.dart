import 'dart:ui';

import 'package:e_cart/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SectionHeading extends StatelessWidget {
  const SectionHeading({
    super.key,
    required this.title,
    required this.buttonTitle,
    this.textColor,
    required this.showActionButton,
    this.onPressed,
  });

  final String title, buttonTitle;
  final Color? textColor;
  final bool showActionButton;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: Sizess.defaultSpace),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .apply(color: textColor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(
                width: Sizess.spaceBtsSections,
              ),
              if (showActionButton)
                TextButton(onPressed: onPressed, child: Text(buttonTitle))
            ],
          )
        ],
      ),
    );
  }
}
