import 'package:dio/dio.dart';
import 'dart:async';
import 'dart:io';
import '../config/serviece.dart';
import 'package:flutter/material.dart';
enum Method {
  post,
  get,
}

//接口
Future request(String url,Method method, paramete) async {
  print('开始获取数据');
  try {
    Response response;
    Dio dio = new Dio();
    dio.options.contentType = ContentType.parse("application/x-www-form-urlencoded");
    switch (method) {

      case Method.post:
        // TODO: Handle this case.
        response = await dio.post(serviceUrl + url, data: paramete);
        break;
      case Method.get:
        // TODO: Handle this case.
        response = await dio.get(serviceUrl + url, queryParameters: paramete);
        break;
    }
    if (response.statusCode == 200) {
      return response;
    }else {
      throw Exception('后端接口出现异常');
    }


  }catch (error) {
    return print(error);
  }


}




//获取首页主体内容
//async是指异步方法
Future getHomePageContent() async{
  print('开始获取首页数据');

  try{
    Response response;
    Dio dio = new Dio();
    //设置contentType，请求类型,这里采用的是表单的形式
    dio.options.contentType = ContentType.parse("application/x-www-form-urlencoded");
    var formData= {'token': token, 'c': '110', 'l':'zh_cn'};
    response = await dio.post(servicePath['homePageContent'], data: formData);


    if (response.statusCode == 200) {
      return response;
    }else {
      throw Exception('后端接口出现异常');
    }
  }catch (error) {
    return print(error);
  }



  
}
