
import 'package:bilian_xy/pages/setting.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../pages/major.dart';

class BlBarSwitch extends StatelessWidget {
  final bool switchDisplay; // true::dialogs | false::discover
  final ValueChanged<bool> onSwitch;

  const BlBarSwitch({
    Key? key,
    required this.switchDisplay,
    required this.onSwitch
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle enabledStyle = TextStyle(fontSize: 16.sp, color: const Color(0xFF333333));
    final TextStyle disabledStyle = TextStyle(fontSize: 16.sp, color: const Color(0xFF8D8D93));
    return Row(
      children: [
        // SizedBox(width: 50.w),
        // Container(width: 50.w, color: const Color(0xFF000000)),
        Expanded(
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                BlButtonBarSwitch(
                  text: "对话",
                  onPressed: () {
                    onSwitch(true);
                  },
                  style: switchDisplay ? enabledStyle : disabledStyle,
                ),
                BlButtonBarSwitch(
                  text: "发现",
                  onPressed: () {
                    onSwitch(false);
                  },
                  style: switchDisplay ? disabledStyle : enabledStyle,
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 50.w,
          height: 50.h,
          child: IconButton(
            icon: Image.asset("asset/logo_user.png", height: 21.h),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const BlPageSetting()));
            },
          ),
        )
      ],
    );
  }
}

class BlButtonBarSwitch extends StatelessWidget {
  const BlButtonBarSwitch({
    super.key,
    required this.text,
    required this.onPressed,
    required this.style
  });

  final String text;
  final VoidCallback onPressed;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      // materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      onPressed: onPressed,
      child: Text(text, style: style),
    );
  }
}

class BlBarText extends StatelessWidget {
  const BlBarText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
