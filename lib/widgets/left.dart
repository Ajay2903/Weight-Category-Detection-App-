import 'package:flutter/material.dart';
class LeftImage extends StatelessWidget {
  final double barwidth;
  LeftImage(this.barwidth);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.end,
      children: [Container(height: 30,width: barwidth,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),bottomLeft: Radius.circular(25),),
            color: Colors.yellowAccent),)],);
  }
}
