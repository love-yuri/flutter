import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromRGBO(72, 6, 188, 1)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page yuri'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      //对 setState 的调用告诉 Flutter 框架有些东西已经
      //在此 State 中发生更改，这会导致它重新运行下面的 build 方法
      //以便显示可以反映更新后的值。如果我们改变
      //_counter 没有调用 setState(), 那么 build 方法就不会
      //再次调用，所以看起来什么也没有发生。
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    //每次调用 setState 时都会重新运行此方法，例如完成
    //通过上面的 _incrementCounter 方法。
    //
    //Flutter框架已经过优化，可以重新运行构建方法
    //速度快，这样你就可以重建任何需要更新的东西
    //而不是必须单独更改小部件的实例。
    return Scaffold(
      appBar: AppBar(
        //尝试一下：尝试将此处的颜色更改为特定颜色（以
        //Colors.amber，也许？）并触发热重载以查看 AppBar
        //改变颜色，而其他颜色保持不变。
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        //这里我们从创建的 MyHomePage 对象中获取值
        //App.build 方法，并用它来设置我们的应用栏标题。
        title: Text(widget.title),
      ),
      body: Center(
        //Center 是一个布局小部件。它需要一个孩子并定位它
        //在父级的中间。
        child: Column(
          // Column 也是一个布局小部件。它需要一个孩子名单和
          // 将它们垂直排列。默认情况下，它会调整自身大小以适合其
          // 水平放置孩子，并尝试与父母一样高。
          //
          // 列有各种属性来控制它本身的大小和
          // 它如何定位它的孩子。这里我们使用 mainAxisAlignment 来
          // 将子项垂直居中；这里的主轴是垂直的
          // 轴，因为列是垂直的（交叉轴将是
          // 水平的）。
          //
          // 试试这个：调用“调试绘画”（选择“切换调试绘画”
          // 在 IDE 中执行操作，或在控制台中按“p”），以查看
          // 每个小部件的线框。
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.remove),
      ), // 这个尾随逗号使构建方法的自动格式化变得更好。
    );
  }
}
