/*
 * @Author: love-yuri yuri2078170658@gmail.com
 * @Date: 2024-06-22 21:59:12
 * @LastEditTime: 2024-06-22 21:59:34
 * @Description: banner数据实体类
 */

// ignore_for_file: no_leading_underscores_for_local_identifiers

class BannerData {
  List<Data>? data;
  int? errorCode;
  String? errorMsg;

  BannerData({this.data, this.errorCode, this.errorMsg});

  BannerData.fromJson(Map<String, dynamic> json) {
    if(json["data"] is List) {
      data = json["data"] == null ? null : (json["data"] as List).map((e) => Data.fromJson(e)).toList();
    }
    if(json["errorCode"] is int) {
      errorCode = json["errorCode"];
    }
    if(json["errorMsg"] is String) {
      errorMsg = json["errorMsg"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(data != null) {
      _data["data"] = data?.map((e) => e.toJson()).toList();
    }
    _data["errorCode"] = errorCode;
    _data["errorMsg"] = errorMsg;
    return _data;
  }
}

class Data {
  String? desc;
  int? id;
  String? imagePath;
  int? isVisible;
  int? order;
  String? title;
  int? type;
  String? url;

  Data({this.desc, this.id, this.imagePath, this.isVisible, this.order, this.title, this.type, this.url});

  Data.fromJson(Map<String, dynamic> json) {
    if(json["desc"] is String) {
      desc = json["desc"];
    }
    if(json["id"] is int) {
      id = json["id"];
    }
    if(json["imagePath"] is String) {
      imagePath = json["imagePath"];
    }
    if(json["isVisible"] is int) {
      isVisible = json["isVisible"];
    }
    if(json["order"] is int) {
      order = json["order"];
    }
    if(json["title"] is String) {
      title = json["title"];
    }
    if(json["type"] is int) {
      type = json["type"];
    }
    if(json["url"] is String) {
      url = json["url"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["desc"] = desc;
    _data["id"] = id;
    _data["imagePath"] = imagePath;
    _data["isVisible"] = isVisible;
    _data["order"] = order;
    _data["title"] = title;
    _data["type"] = type;
    _data["url"] = url;
    return _data;
  }
}