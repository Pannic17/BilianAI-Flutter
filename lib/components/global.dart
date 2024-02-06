import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BlHorizontalLine extends StatelessWidget {
  final double? width;
  final double? vertical;
  const BlHorizontalLine({
    super.key,
    this.width,
    this.vertical
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      width: width ?? 28.r,
      color: const Color(0xFF8D8D93),
      margin: EdgeInsets.symmetric(vertical: vertical ?? 8.r),
    );
  }
}

class BlMajorButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final Color backgroundColor;
  final double width;
  const BlMajorButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.backgroundColor = const Color(0xFF6886FF),
    this.width = 246
  });

  @override
  Widget build(BuildContext context) {
    double boxWidth = width.w;
    return SizedBox(
      width: boxWidth,
      height: 43.h,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.r),
          ),
          disabledBackgroundColor: const Color(0xFFB0C9FF)
        ),
        child: Text(text,
          style: TextStyle(
              fontSize: 16.sp,
              color: const Color(0xFFFFFFFF)
          ),
        ),
      ),
    );
  }
}
