import 'dart:ffi';

import 'package:flutter/material.dart';
import '../config/app_colors.dart';
import '../config/text_colors.dart';

class BlockWidget extends StatelessWidget {
  final String title;
  final double width;
  final double elevatio;
  final double blurSize;
  final double height;
  final double borderRadius;
  final Widget child;
  final double borderWidth;
  final EdgeInsets padding;
  final EdgeInsets margin;
  final Alignment alignment;
  final Color backgroundColor;
  final Color borderColor;
  final Color shadowColor;
  final Function() onTap;

  const BlockWidget({Key? key, 
  required this.onTap, 
  this.title = "", 
  this.width = 0.0, 
  this.elevatio = 0.0, 
  this.blurSize = 20.0, 
  this.height = 0.0, 
  this.borderRadius = 0.0, 
  required this.child, 
  this.borderWidth = 0.0, 
  required this.padding, 
  required this.margin,
  this.alignment = Alignment.center,
  this.backgroundColor = AppColors.whiteColor,
  this.borderColor = AppColors.borderColor,
  this.shadowColor = AppColors.shadowColor
  })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      height: height,
      width: width,
      padding: padding,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(borderRadius),
        border: Border.all(
          color: borderColor,
          width: borderWidth
        ),
        boxShadow: [
          BoxShadow(
            color: shadowColor,
            offset: const Offset(0, 6),
            blurRadius: blurSize,
          ),
        ],
      ),
      child: child,

    );
  }
}