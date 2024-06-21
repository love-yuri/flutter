import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  int count = 0;
  void _update() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Text("文本组件: {num} -> $count"),
              FloatingActionButton(
                onPressed: _update,
                child: const Icon(Icons.add),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20.0),
                alignment: Alignment.center, // 对其方式
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2.0,
                    color: Colors.pinkAccent.shade100,
                  ),
                  color: Colors.blue,
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                ),
                height: 100.h,
                width: 100.w,
                child: Text("第三个组件", style: TextStyle(
                  fontSize: 14.sp
                ),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
