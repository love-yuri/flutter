/*
 * @Author: love-yuri yuri2078170658@gmail.com
 * @Date: 2024-06-22 17:18:28
 * @LastEditTime: 2024-06-22 22:22:25
 * @Description: 路由管理
 */
import 'package:first/pages/home.dart';
import 'package:first/pages/second.dart';
import 'package:flutter/material.dart';

class RouteManager {
  static const String home = '/';
  static const String second = '/second';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return buildPage(const HomePage());
      case second:
        return buildPage(const SecondPage(
          title: "这是第二个界面",
        ), settings: settings);
      default:
        return buildPage(Center(
          child: Text('No route defined for ${settings.name}'),
        ));
    }
  }

  static MaterialPageRoute buildPage(
    Widget widget, {
    RouteSettings? settings,
    bool maintainState = true,
    bool fullscreenDialog = false,
  }) {
    return MaterialPageRoute(
      builder: (context) => widget,
      settings: settings,
      maintainState: maintainState,
      fullscreenDialog: fullscreenDialog,
    );
  }
}
