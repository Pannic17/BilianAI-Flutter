import 'package:bilian_xy/components/global.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BlPageLogin extends StatefulWidget {
  const BlPageLogin({Key? key}) : super(key: key);

  @override
  State<BlPageLogin> createState() => _BlPageLoginState();
}

class _BlPageLoginState extends State<BlPageLogin> {
  bool agreed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 195.h),
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
            SizedBox(height: 145.h),
            BlMajorButton(text: "微信登录", onPressed: agreed ? () {} : null),
            SizedBox(height: 50.h),
            const BlWidgetOtherLogin(),
            SizedBox(height: 22.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                BlButtonLogin(
                  path: "asset/login_phone.png",
                  text: "手机号登录",
                  onPressed: () {},
                ),
                SizedBox(width: 29.w),
                BlButtonLogin(
                  path: "asset/login_apple.png",
                  text: "Apple ID登录",
                  onPressed: () {},
                )
              ],
            ),
            SizedBox(height: 60.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      agreed = !agreed;
                    });
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      agreed
                        ? Icon(Icons.radio_button_checked, color: const Color(0xFF8D8D93), size: 16.sp)
                        : Icon(Icons.radio_button_off, color: const Color(0xFF8D8D93), size: 16.sp),
                      Text(" 我已经详细阅读并同意", style: TextStyle(fontSize: 12.sp, color: const Color(0xFF8D8D93)))
                    ],
                  ),
                ),
                BlButtonText(text: "《比恋用户协议》", onPressed: () {}),
                BlButtonText(text: "《隐私政策》", onPressed: () {})
              ],
            )
          ],
        ),
      ),
    );
  }
}

class BlButtonText extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const BlButtonText({
    super.key,
    required this.text,
    required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero, // 取消内边距
      ),
      child: Text(text,
        style: TextStyle(
          fontSize: 12.sp,
          color: const Color(0xFF6886FF)
        ),
      ),
    );
  }
}

class BlButtonLogin extends StatelessWidget {
  final String path;
  final String text;
  final VoidCallback onPressed;
  const BlButtonLogin({
    super.key,
    required this.path,
    required this.text,
    required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Column(
        children: [
          Image.asset(path, width: 51.r, height: 51.r),
          SizedBox(height: 6.h),
          Text(text,
            style: TextStyle(fontSize: 13.sp, color: const Color(0xFF8D8D93)),
          )
        ],
      ),
    );
  }
}

class BlWidgetOtherLogin extends StatelessWidget {
  const BlWidgetOtherLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BlHorizontalLine(width: 28.r),
        Text(" 其他登录方式 ",
          style: TextStyle(
              fontSize: 13.sp,
              color: const Color(0xFF8D8D93)
          ),
        ),
        BlHorizontalLine(width: 28.r)
      ],
    );
  }
}