import 'package:first/componets/route.dart';
import 'package:first/https/base.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  int count = 0;
  final _bannerDataModel = BannerDataModel();
  List<String> images = [
    "images/1.png",
    "images/2.jpg",
    "images/3.jpg",
  ];

  @override
  void initState() {
    super.initState();
    _bannerDataModel.updateBannerData();
  }

  void _update() {
    setState(() {
      count = count + 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => _bannerDataModel,
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
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
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10.0)),
                    ),
                    height: 100.h,
                    width: 100.w,
                    child: Text(
                      "第三个组件",
                      style: TextStyle(fontSize: 14.sp),
                    ),
                  ),
                  Consumer<BannerDataModel>(builder: (context, banner, child) {
                    return Container(
                      width: 100.w,
                      height: 300.h,
                      decoration: const BoxDecoration(),
                      child: Swiper(
                        itemCount: banner.bannerData?.data?.length ?? 0,
                        control: const SwiperControl(),
                        itemBuilder: (context, index) {
                          return Container(
                            width: double.infinity,
                            height: 300.h,
                            decoration: const BoxDecoration(),
                            child: Image.network(banner.bannerData?.data![index].imagePath ??""),
                          );
                        },
                      ),
                    );
                  }),
                  InkWell(
                    onTap: () => Navigator.pushNamed(
                        context, RouteManager.second,
                        arguments: {
                          "name": "yuri",
                        }),
                    child: Container(
                      width: 50.w,
                      height: 50.h,
                      decoration: const BoxDecoration(color: Colors.pink),
                    ),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => Text("yuri $index"),
                    itemCount: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
