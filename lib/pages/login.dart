import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BlPageLogin extends StatefulWidget {
  const BlPageLogin({Key? key}) : super(key: key);

  @override
  State<BlPageLogin> createState() => _BlPageLoginState();
}

class _BlPageLoginState extends State<BlPageLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 226.h),
            Image.asset("asset/logo_small.png", width: 59.w, fit: BoxFit.fitWidth),
            SizedBox(height: 20.h),
            SizedBox(
              height: 32.h,
              child: Text("比恋AI",
                style: TextStyle(
                  fontSize: 20.sp,
                  color: const Color(0xFF191919)
                ),
              ),
            ),
            SizedBox(height: 152.h),
            SizedBox(
              width: 246.w,
              height: 43.h,
              child: TextButton(
                onPressed: ()=>{},
                style: TextButton.styleFrom(
                  backgroundColor: const Color(0xFF6886FF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.r),
                  )
                ),
                child: Text("微信登录",
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: const Color(0xFFFFFFFF)
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
