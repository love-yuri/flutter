import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  final String title;
  const SecondPage({super.key, required this.title});

  @override
  State<StatefulWidget> createState() {
    return _SecondPage();
  }
}

class _SecondPage extends State<SecondPage> {
  final dio = Dio();

  void getHttp() async {
    final response =
        await dio.get('https://www.wanandroid.com/article/list/0/json');
    debugPrint(response.data.toString());
  }

  @override
  Widget build(BuildContext context) {
    // getHttp();
    var map = ModalRoute.of(context)?.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        title: Text(map['name']),
      ),
      body: Container(),
    );
  }
}
