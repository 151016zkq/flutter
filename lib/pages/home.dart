import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import '../config/httpHeader.dart';
import '../service/service_method.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
//json数据解析的库
import 'dart:convert';


class HomePage extends StatefulWidget {

  HomeStatePage createState() => HomeStatePage();
}

class HomeStatePage extends State<HomePage> with AutomaticKeepAliveClientMixin {

  @override
  bool get wantKeepAlive => true;

  TextEditingController textFieldController = TextEditingController();
  String showText = '欢迎来到地球旅游';
  String homePageContent = '正在获取数据';
  @override
  Widget build(BuildContext context) {


    // TODO: implement build
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('美好人间'
          ),
        ),
        //更新页面的的控件
        body: FutureBuilder(
          builder: (context, response) {
            if (response.hasData) {
              var data = json.decode(response.data.toString());
              print(data);
              List<Map> swiper = (data['data']['banner'] as List).cast();
              List naviList = (data['data']['function'] as List).cast();
              SwiperCustom swiperView = SwiperCustom(dataList: swiper,);
              TopNavigator navi = TopNavigator(navigatorList: naviList,);
              AdBanner banner = AdBanner(addPicture: 'khkhkhkhk');
              LeaderPhone phone = LeaderPhone(leaderImage: '1223', leaderPhone: '15552751836',);

              Recommend recommend = Recommend(list: naviList,title: '商品推荐');
              return SingleChildScrollView(
                child: Column(children: <Widget>[
                  swiperView,
                  banner,
                  navi,
                  phone,
                  recommend

                ],),
              );


            }else {
              return Center(child: Text('加载失败'),);
            }
          },
          future: getHomePageContent(),
        ),
      ),
    );
  }











}
//轮播组件
class SwiperCustom extends StatelessWidget {
  final List dataList;
  SwiperCustom({Key key, this.dataList}): super(key:key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build


    print('屏幕的高度${ScreenUtil.screenWidth}');
    return Container(
      color: Colors.red,
      height: ScreenUtil().setHeight(400),
      width: ScreenUtil().setWidth(750),
      padding: EdgeInsets.all(0),
      child: Swiper(
        itemBuilder: (BuildContext context, int index){
        //从远端获取的图片
          return Image.network('${dataList[index]['image_url']}');
        },
        itemCount: dataList.length,
        autoplay: true,
        pagination: SwiperPagination(),


      ),
    );
  }


}
//导航按钮
class TopNavigator extends StatelessWidget {
  TopNavigator({Key key, this.navigatorList}): super(key: key);
  final List navigatorList;

  Widget _gridViewItemUI(BuildContext context, item) {
    return InkWell(
      child: Column(
        children: <Widget>[
          Image.network(item['image_url'],
            width: ScreenUtil().setWidth(100),
          ),
          Container(
            child: Text(
                item['name'],
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.red,
                ),
            ),
            padding: EdgeInsets.only(top: 8),
          ),


        ],
      ),
    );


  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    int getContainerHeight(List data) {
        var count = data.length;
        var line = count / 4;


    }
    final double mainAxisSpacing = 5;
    final double crossAxisSpacing = 10;
    final double childAspectRatio = 1;

    return Container(
      height: 400,
      padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
      margin: EdgeInsets.only(top: 5),
      child: GridView.builder(
        itemCount: navigatorList.length,
        physics:  NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4,
        mainAxisSpacing: mainAxisSpacing,
        crossAxisSpacing: crossAxisSpacing,
        childAspectRatio: childAspectRatio,
        ),
        itemBuilder: (BuildContext context, int index){
          return _gridViewItemUI(context, navigatorList[index]);
        },
      ),


    );

  }
}



class AdBanner extends StatelessWidget {
  final String addPicture;
  AdBanner({Key key, this.addPicture}): super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: ScreenUtil().setHeight(333),
      width: ScreenUtil().setWidth(750),
      child: Image.network('https://i1.bjyltf.com/system/banner/20181103/36211541249941.jpg'),
    );
  }

}

//拨打电话页面
class LeaderPhone extends StatelessWidget {
  final String leaderImage;
  final String leaderPhone;

  LeaderPhone({Key key, this.leaderPhone, this.leaderImage}): super(key: key);


  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return InkWell(
      onTap: () {

      },
      child: Container(
        child: Image.network('https://i1.bjyltf.com/system/banner/20181103/36211541249941.jpg'),
      ),
    );


//      Stack(
//      children: <Widget>[
//        Image.network('https://i1.bjyltf.com/system/banner/20181103/36211541249941.jpg'),
//        Center(
//          child: Text(
//            this.leaderPhone,
//            style: TextStyle(
//              fontSize: 20,
//              color: Colors.blue
//            ),
//          ),
//        )
//
//      ],
//    );

  }

}

//商品推荐
class Recommend extends StatelessWidget {
  final List list;
  final String title;
  Recommend({Key key, this.list, this.title}): super(key:key);
  Widget _titleWidget() {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.fromLTRB(10, 5, 0,10),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(
            width: 0.5,
            color: Colors.black12,
          ),
        ),
      ),
      child: Text(
        this.title,
        style: TextStyle(
          color: Colors.pink,
          fontSize: 15,
        ),
      ),
    );
  }
  //商品单独
  Widget _item(BuildContext context, item) {
    return InkWell(
      onTap: (){},
      child: Container(
        height: ScreenUtil().setHeight(330),
        width: ScreenUtil().setWidth(250),
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            left: BorderSide(
              width: 0.5,
              color: Colors.black12
            )
          ),
        ),
        child: Column(
          children: <Widget>[
            Image.network('https://i1.bjyltf.com/system/banner/20181103/36211541249941.jpg'),
            Container(
              child: Text(
                item['name']
              ),
            )
          ],
        ),
      ),
    );
  }
  
  //横向列表
  Widget _listViewWidget() {
    return Container(
      height: ScreenUtil().setHeight(333),
      child: ListView.builder(
        itemCount: list.length,

        itemBuilder:(context, index) {
          return _item(context, list[index]);
        },
        scrollDirection: Axis.horizontal,

      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: ScreenUtil().setHeight(400),
      child: Column(
        children: <Widget>[
          _titleWidget(),
          _listViewWidget(),
        ],
      ),
    );
  }
}

//楼层标题
//class FloorTitle extends StatelessWidget {
//  String titleImage;
//  FloorTitle({Key key,this.titleImage}): super(key:key);
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return Container(
//      child: InkWell(
//        child: Image.network(''),
//      ),
//    );
//  }
//
//}




