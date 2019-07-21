///谷歌推出的全新的设计，适配手机平板,设计比较有质感。
import 'package:flutter/material.dart';
///ios的设计风格
import 'package:flutter/cupertino.dart';
import './cart.dart';
import './category.dart';
import './home.dart';
import './profile.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../provide/provide.dart';
//StatefulWidget是动态的组件，是有变化的组件。
class IndexPage extends StatefulWidget {

  _IndexPageState createState() => _IndexPageState();

}


class _IndexPageState extends State<IndexPage> {
  ///数组
  final List<BottomNavigationBarItem> bottomBars = [
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.home),
      title: Text('首页'),
    ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.search),
      title: Text('分类'),
    ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.shopping_cart),
      title: Text('购物车'),
    ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.profile_circled),
      title: Text('会员中心'),
    ),

  ];


  final List<Widget> tabBodies = [
    HomePage(),
    CategoryPage(),
    CartPage(),
    ProfilePage()
  ];

  int currentIndex = 0;
  var currentPage;

  //设置默认选择的页面
  @override
  void initState() {
    // TODO: implement initState
    currentPage = tabBodies[currentIndex];
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    ///初始化了屏幕的设计尺寸
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 245, 245, 1.0),
      //底部导航栏
      bottomNavigationBar: BottomNavigationBar(items: bottomBars,
        //其他类型少于三个的话效果看不出来。
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index){
          setState(() {
            currentIndex = index;
            currentPage = tabBodies[index];
          });
        },
      ),
      body: IndexedStack(
        children: tabBodies,
        index: currentIndex,
      ),
    );
  }
}






