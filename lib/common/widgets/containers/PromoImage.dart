import 'package:flutter/material.dart';

class PromoImage extends StatelessWidget {
  const PromoImage({
    super.key,
    required this.width,
    required this.height,
    required this.imageurl,
    required this.applyImageRadius,
    this.border,
    required this.backgroundColor,
    this.padding,
    required this.isNetworkImage,
    this.onPressed,
    required this.fit,
    required this.borderRadius,
  });

  final double? width, height;
  final String imageurl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          border: border,
          color: backgroundColor,
        ),
        child: ClipRRect(
            borderRadius: applyImageRadius
                ? BorderRadius.circular(borderRadius)
                : BorderRadius.zero,
            child: Image(
              fit: fit,
              image: isNetworkImage
                  ? NetworkImage(imageurl)
                  : AssetImage(imageurl) as ImageProvider,
            )),
      ),
    );
  }
}
