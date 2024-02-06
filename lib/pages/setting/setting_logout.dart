import 'package:bilian_xy/components/global.dart';
import 'package:bilian_xy/pages/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BlPageSettingLogout extends StatefulWidget {
  const BlPageSettingLogout({Key? key}) : super(key: key);

  @override
  State<BlPageSettingLogout> createState() => _BlPageSettingLogoutState();
}

class _BlPageSettingLogoutState extends State<BlPageSettingLogout> {
  TextEditingController textController = TextEditingController();
  FocusNode focusNode = FocusNode();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // textController = TextEditingController();
    // focusNode = FocusNode();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    textController.dispose();
    focusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: const Color(0xFFFFFFFF),
        title: Text("注销账号", style: TextStyle(fontSize: 16.sp, color: const Color(0xFF191919))),
      ),
      body: Center(
        child: Column(
          children: [
            BlTextField(textController: textController, focusNode: focusNode, hintText: "请输入注销原因"),
            Container(
              width: 347.w,
              alignment: Alignment.centerLeft,
              child: const Text(
                "注销账号后系统将彻底删除该账号及所有用户信息",
                style: TextStyle(
                  color: Color(0xFF8D8D97)
                ),
              )
            ),
            Expanded(child: Container()),
            Container(
                margin: EdgeInsets.symmetric(vertical: 24.h),
                child: BlMajorButton(text: "提交", onPressed: () {}, width: 347)
            ),
            SizedBox(height: 60.h)
          ],
        ),
      ),
    );
  }
}

class BlTextField extends StatelessWidget {
  const BlTextField({
    super.key,
    required this.textController,
    required this.focusNode,
    required this.hintText
  });

  final TextEditingController textController;
  final FocusNode focusNode;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 347.w,
      height: 145.h,
      decoration: BoxDecoration(
          color: const Color(0xFFFAFAFA),
          borderRadius: BorderRadius.circular(8.r)
      ),
      padding: EdgeInsets.symmetric(horizontal: 8.r),
      child: TextField(
        controller: textController,
        focusNode: focusNode,
        maxLength: 200,
        maxLines: 4,
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
                fontSize: 14.sp,
                color: const Color(0xFF979797)
            ),
            border: InputBorder.none
        ),
      ),
    );
  }
}
