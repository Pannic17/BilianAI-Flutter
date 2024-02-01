import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/appbar.dart';

class BlPageMajor extends StatefulWidget {
  const BlPageMajor({Key? key}) : super(key: key);

  @override
  State<BlPageMajor> createState() => _BlPageMajorState();
}

class _BlPageMajorState extends State<BlPageMajor> {
  final StreamController<bool> _streamController = StreamController.broadcast();
  // bool _switchDisplay = false;

  @override
  void initState() {
    super.initState();
    _streamController.add(false);
  }

  @override
  void dispose() {
    _streamController.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFF6F6F6),
        leading: Container(),
        title: StreamBuilder<bool>(
          stream: _streamController.stream,
          builder: (context, snapshot) {
            final switchDisplay = snapshot.data ?? false;
            return BlBarSwitch(
              switchDisplay: switchDisplay, // 初始状态
              onSwitch: (bool value) {
                _streamController.sink.add(value);
              },
            );
          }
        ),
      ),
      body: StreamBuilder<bool>(
        stream: _streamController.stream,
        builder: (context, snapshot) {
          return Container(); // 当没有数据时的默认状态
        },
      ),
    );
  }
}
