import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String data;
  final double height;
  final double width;
  final Color? ColorData;
  final IconData icon;
  final Color? IconColor;
  final Color? ColorConainer;
  final Color BorderColor;
  final double BorderWidth;
  final EdgeInsetsGeometry padding;
  final BorderRadiusGeometry? BorderRadius;
  const MyButton({
    super.key,
    required this.data,
    required this.height,
    required this.width,
    required this.ColorData,
    required this.icon,
    required this.IconColor,
    required this.ColorConainer,
    required this.BorderColor,
    required this.BorderWidth,
    required this.padding,
    required this.BorderRadius
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        border: Border.all(color: BorderColor,width:BorderWidth ),
        color:ColorConainer,
        borderRadius: BorderRadius,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Padding(
       padding: padding,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right:10),
              child: Icon(icon, color: IconColor),
            ),
            Text(
              data,
              style: TextStyle(
                color: ColorData,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
