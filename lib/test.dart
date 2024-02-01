import 'package:bilian_xy/components/appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, snapshot) {
        return MaterialApp(
          home: Scaffold(
            appBar: AppBar(
              title: BlBarSwitch(switchDisplay: false, onSwitch: (data) {}),
            ),
            body: Center(
              child: Row(
                children: <Widget>[
                  SizedBox(width: 30),
                  Expanded(
                    child: Center(
                      child: Row(
                        mainAxisSize: MainAxisSize.min, // 使得按钮靠近居中
                        children: <Widget>[
                          ElevatedButton(onPressed: () {}, child: Text('按钮1')),
                          SizedBox(width: 10), // 两个按钮之间的间隔
                          ElevatedButton(onPressed: () {}, child: Text('按钮2')),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 30, child: ElevatedButton(onPressed: () {}, child: Text('按钮3'))),
                ],
              )

            ),
          ),
        );
      }
    );
  }
}
