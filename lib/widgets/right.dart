import 'package:flutter/material.dart';
class RightImage extends StatelessWidget {
  final double barwidth;
  RightImage(this.barwidth);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.start,
      children: [Container(height: 30,width: barwidth,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(25),bottomRight: Radius.circular(25),),
            color: Colors.yellowAccent),)],);
  }
}
