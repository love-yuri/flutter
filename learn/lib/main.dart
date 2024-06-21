/*
 * @Author: love-yuri yuri2078170658@gmail.com
 * @Date: 2024-06-21 20:02:45
 * @LastEditTime: 2024-06-21 21:35:22
 * @Description: test
 */
import 'package:first/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Size getDesignSize() {
  final firstView = WidgetsBinding.instance.platformDispatcher.views.first;
  final short = firstView.physicalSize.shortestSide / firstView.devicePixelRatio;
  final long = firstView.physicalSize.longestSide / firstView.devicePixelRatio;
  const scale = 0.96;
  return Size(short * scale, long * scale); // 设计尺寸，根据你的设计稿来确定。
}

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: getDesignSize(),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomePage(),
        );
      },
    );
  }
}
