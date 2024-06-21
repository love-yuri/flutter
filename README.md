# Flutter入门教程

### 项目介绍

1. `hello_world`: 仅仅是一个hello项目
2. `learn`: 学习测试项目，学习各种组件

## 安装

### windows

1. 安装SDK， 在[SDK归档](https://docs.flutter.cn/release/archive?tab=windows)列表中下载你所需要的sdk版本。本教程使用sdk: `3.22.2`
2. 解压sdk
3. 将`解压目录/flutter/bin` 复制到系统环境变量就行
4. 打开终端输入: `flutter create hello_world` 创建项目

### 开始运行

1. 打开终端，进入刚才的目录
2. 使用`flutter run` 运行，他会让你选择运行在哪个地方。
3. 我选择运行在windows。然后按下回车等待编译完成就行了

## 基础代码

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "yuri is yes",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("这是标题"),
        ),
        body: const Center(
          child: Text('这是主体'),
        ),
      ),
    );
  }
}

```

- `main`方法，flutter程序执行的入口
- `StatelessWidget`  无状态组件，表示该组件没有实质性的状态 
- app需要重写build方法，他要返回一个weight
- `Scaffold` 是一个基础组件，包含了顶栏和主体两个部分

## 常用类

### Scaffold

> 该类是一个组件，包含了顶栏和主体两个部分

### MaterialApp

> 封装了常用属性的app类。创建app需要返回的就是这个。

### SafeArea

> 安全显示区域，在手机端就是除了状态栏和底部小白条以外的区域。

### Column

> 垂直排列组件，需要实现children。组件一个一个排下来

### Container

> 用于显示一个容器

```dart
Container(
    margin: const EdgeInsets.only(top: 20.0),
    alignment: Alignment.center, // 对其方式
    decoration: const BoxDecoration(
      color: Colors.blue,
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
    ),
    height: 100.h,
    width: 100.w,
    child: const Text("第三个组件"),
)
```



## 快捷键

1. 在使用`flutter run`运行，修改代码后按下`r`键即可热更新。
2. 在使用`flutter run`运行，修改代码后按下`p`键可以查看元素的bian'kuang

## 第三方库

1. `flutter_screenutil: ^5.9.3` : 屏幕适配工具 