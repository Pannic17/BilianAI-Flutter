import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BlPageSettingAdvice extends StatefulWidget {
  const BlPageSettingAdvice({Key? key}) : super(key: key);

  @override
  State<BlPageSettingAdvice> createState() => _BlPageSettingAdviceState();
}

class _BlPageSettingAdviceState extends State<BlPageSettingAdvice> {
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
        title: Text("提交反馈", style: TextStyle(fontSize: 16.sp, color: const Color(0xFF191919))),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
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
                  hintText: "你可以描述你遇到的问题",
                  hintStyle: TextStyle(
                    fontSize: 14.sp,
                    color: const Color(0xFF979797)
                  ),
                  border: InputBorder.none
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
