import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextButton(
                onPressed: () {
                  // 左侧按钮被点击时执行的操作
                  print('左侧按钮被点击了！');
                },
                child: Text(
                  '按钮1',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(width: 10.0),
              TextButton(
                onPressed: () {
                  // 右侧按钮被点击时执行的操作
                  print('右侧按钮被点击了！');
                },
                child: Text(
                  '按钮2',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                // 图标按钮被点击时执行的操作
                print('图标按钮被点击了！');
              },
            ),
          ],
        ),
        body: Center(
          child: Text('自定义AppBar示例'),
        ),
      ),
    );
  }
}
