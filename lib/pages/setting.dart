import 'package:bilian_xy/components/global.dart';
import 'package:bilian_xy/pages/setting/setting_advice.dart';
import 'package:bilian_xy/pages/setting/setting_logout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BlPageSetting extends StatefulWidget {
  const BlPageSetting({Key? key}) : super(key: key);

  @override
  State<BlPageSetting> createState() => _BlPageSettingState();
}

class _BlPageSettingState extends State<BlPageSetting> {
  String avatar = "asset/logo_user.png";
  String nickname = "蛋糕";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: const Color(0xFFFFFFFF),
        title: Text("设置", style: TextStyle(fontSize: 16.sp, color: const Color(0xFF191919))),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 6.h),
            Container(
              width: 344.w,
              height: 112.h,
              decoration: BoxDecoration(
                color: const Color(0xFFF6F6F6),
                borderRadius: BorderRadius.circular(13.r),
              ),
              margin: EdgeInsets.all(6.h),
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("头像",
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: const Color(0xFF191919)
                        )
                      ),
                      CircleAvatar(
                        radius: 20.r,
                        backgroundImage: AssetImage(avatar),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("昵称",
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: const Color(0xFF191919)
                        )
                      ),
                      Text(nickname,
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: const Color(0xFF959595)
                        )
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              width: 344.w,
              height: 261.h,
              decoration: BoxDecoration(
                color: const Color(0xFFF6F6F6),
                borderRadius: BorderRadius.circular(13.r),
              ),
              margin: EdgeInsets.all(6.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BlSettingRow(
                    onPressed: () {},
                    logoPath: "asset/logo_share.png",
                    text: "分享比恋AI给好友",
                  ),
                  BlSettingRow(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const BlPageSettingAdvice()));
                    },
                    logoPath: "asset/logo_mail.png",
                    text: "反馈与投诉，帮助我们改进"
                  ),
                  BlSettingRow(
                    onPressed: () {},
                    logoPath: "asset/logo_privacy.png",
                    text: "隐私说明",
                  ),
                  BlSettingRow(
                    onPressed: () {},
                    logoPath: "asset/logo_about.png",
                    text: "关于我们",
                  ),
                  BlSettingRow(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const BlPageSettingLogout()));
                    },
                    logoPath: "asset/logo_logout.png",
                    text: "注销账号",
                  )
                ],
              ),
            ),
            SizedBox(height: 6.h),
            SizedBox(
              width: 344.w,
              height: 56.h,
              child: TextButton(
                onPressed: () {

                },
                style: TextButton.styleFrom(
                    backgroundColor: const Color(0xFFF6F6F6),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    disabledBackgroundColor: const Color(0xFFB0C9FF)
                ),
                child: Text("退出登录",
                  style: TextStyle(
                      fontSize: 16.sp,
                      color: const Color(0xFFB8B8B8)
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

class BlSettingRow extends StatelessWidget {
  final VoidCallback onPressed;
  final String logoPath;
  final String text;
  const BlSettingRow({
    super.key,
    required this.onPressed,
    required this.logoPath,
    required this.text
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 63.w,
            padding: EdgeInsets.symmetric(horizontal: 18.r),
            child: Image.asset(logoPath, width: 27.w, height: 27.h),
          ),
          Text(text, style: TextStyle(fontSize: 16.sp, color: const Color(0xFF191919)))
        ],
      ),
    );
  }
}
