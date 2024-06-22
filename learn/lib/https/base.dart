/*
 * @Author: love-yuri yuri2078170658@gmail.com
 * @Date: 2024-06-22 22:01:29
 * @LastEditTime: 2024-06-22 23:30:13
 * @Description: http基础请求
 */
import 'package:dio/dio.dart';
import 'package:first/entity/banner_data.dart';
import 'package:flutter/material.dart';

class BannerDataModel with ChangeNotifier {
  BannerData? bannerData;

  Future updateBannerData() async {
    Dio dio = Dio();
    dio.options = BaseOptions(
      baseUrl: 'https://www.wanandroid.com',
      connectTimeout: const Duration(seconds: 20),
      receiveTimeout: const Duration(seconds: 20),
      sendTimeout: const Duration(seconds: 20),
    );
    bannerData = BannerData.fromJson((await dio.get("/banner/json")).data);
    debugPrint(bannerData?.toJson().toString());
    notifyListeners();
  }

}
