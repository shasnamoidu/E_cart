import 'package:e_cart/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class CircularContainer extends StatelessWidget {
  const CircularContainer({
    super.key, 
    this.width = 400, 
    this.height = 400, 
    this.radius = 400, 
    this.padding = 0, 
    this.child, 
    this.backgroundColor = Colors.white, 
    required  this.margin, 
    required  Function? onPressed, 
    

  });

  final double? width;
  final double? height;
  final double radius;
  final double padding;
  final Widget? child;
  final Color backgroundColor;
  final EdgeInsets? margin;
  // final Function onPressed;



  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart,color: Colors.black,),),
        Positioned(
          right: 0,
          child: 
        Container(
      width: 18,
      height: 18,
      padding: EdgeInsets.all(padding),
      
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 175, 174, 174),
          borderRadius:
              BorderRadius.circular(radius)),
             
      child: Center(
        child: Text('2', style:  Theme.of(context).textTheme.labelLarge!.apply(color: Colorss.black, fontSizeFactor: 0.8),),
      ),
    )
        
        )

      ],
    );
  }
}
