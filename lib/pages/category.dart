import 'package:flutter/material.dart';
import './categoryModel/categoryModel.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../provide/provide.dart';
import 'package:provide/provide.dart';
class CategoryPage extends StatefulWidget {
  CategoryState createState() => CategoryState();
}
class CategoryState extends State<CategoryPage> {


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('商品分类'),
      ),
      body: Container(
        width: ScreenUtil().setWidth(750),
        child: Row(
          children: <Widget>[
            CategoryLeftView(),
            Column(
              children: <Widget>[
                CategoryTitleView(),
              ],
            )
          ],
        ),
      ),
    );
      
      
      
      
  }

}




class CategoryLeftView extends StatefulWidget {

  CategoryLeftState createState() => CategoryLeftState();
}
class CategoryLeftState extends State<CategoryLeftView> {


  final json = {"code":"0","message":"success","data":[{"mallCategoryId":"4","mallCategoryName":"白酒","bxMallSubDto":[{"mallSubId":"2c9f6c94621970a801626a35cb4d0175","mallCategoryId":"4","mallSubName":"名酒","comments":""},{"mallSubId":"2c9f6c94621970a801626a363e5a0176","mallCategoryId":"4","mallSubName":"宝丰","comments":""},{"mallSubId":"2c9f6c94621970a801626a3770620177","mallCategoryId":"4","mallSubName":"北京二锅头","comments":""},{"mallSubId":"2c9f6c94679b4fb10167f7cc035c15a8","mallCategoryId":"4","mallSubName":"大明","comments":null},{"mallSubId":"2c9f6c94679b4fb10167f7cc2af915a9","mallCategoryId":"4","mallSubName":"杜康","comments":null},{"mallSubId":"2c9f6c94679b4fb10167f7cc535115aa","mallCategoryId":"4","mallSubName":"顿丘","comments":null},{"mallSubId":"2c9f6c94679b4fb10167f7cc77b215ab","mallCategoryId":"4","mallSubName":"汾酒","comments":null},{"mallSubId":"2c9f6c94679b4fb10167f7cca72e15ac","mallCategoryId":"4","mallSubName":"枫林","comments":null},{"mallSubId":"2c9f6c94679b4fb10167f7cccae215ad","mallCategoryId":"4","mallSubName":"高粱酒","comments":null},{"mallSubId":"2c9f6c94679b4fb10167f7ccf0d915ae","mallCategoryId":"4","mallSubName":"古井","comments":null},{"mallSubId":"2c9f6c94679b4fb10167f7cd1d6715af","mallCategoryId":"4","mallSubName":"贵州大曲","comments":null},{"mallSubId":"2c9f6c94679b4fb10167f7cd3f2815b0","mallCategoryId":"4","mallSubName":"国池","comments":null},{"mallSubId":"2c9f6c94679b4fb10167f7cd5d3015b1","mallCategoryId":"4","mallSubName":"国窖","comments":null},{"mallSubId":"2c9f6c94679b4fb10167f7cd7ced15b2","mallCategoryId":"4","mallSubName":"国台","comments":null},{"mallSubId":"2c9f6c94679b4fb10167f7cd9b9015b3","mallCategoryId":"4","mallSubName":"汉酱","comments":null},{"mallSubId":"2c9f6c94679b4fb10167f7cdbfd215b4","mallCategoryId":"4","mallSubName":"红星","comments":null},{"mallSubId":"2c9f6c946891d16801689474e2a70081","mallCategoryId":"4","mallSubName":"怀庄","comments":null},{"mallSubId":"2c9f6c94679b4fb10167f7cdddf815b5","mallCategoryId":"4","mallSubName":"剑南春","comments":null},{"mallSubId":"2c9f6c94679b4fb10167f7cdfd4815b6","mallCategoryId":"4","mallSubName":"江小白","comments":null},{"mallSubId":"2c9f6c94679b4fb1016802277c37160e","mallCategoryId":"4","mallSubName":"金沙","comments":null},{"mallSubId":"2c9f6c94679b4fb10167f7ce207015b7","mallCategoryId":"4","mallSubName":"京宫","comments":null},{"mallSubId":"2c9f6c94679b4fb10167f7ce46d415b8","mallCategoryId":"4","mallSubName":"酒鬼","comments":null},{"mallSubId":"2c9f6c94679b4fb101680226de23160d","mallCategoryId":"4","mallSubName":"口子窖","comments":null},{"mallSubId":"2c9f6c94679b4fb10167f7ce705515b9","mallCategoryId":"4","mallSubName":"郎酒","comments":null},{"mallSubId":"2c9f6c94679b4fb10167f7ce989e15ba","mallCategoryId":"4","mallSubName":"老口子","comments":null},{"mallSubId":"2c9f6c94679b4fb10167f7cec30915bb","mallCategoryId":"4","mallSubName":"龙江家园","comments":null},{"mallSubId":"2c9f6c94679b4fb10167f7cef15c15bc","mallCategoryId":"4","mallSubName":"泸州","comments":null},{"mallSubId":"2c9f6c94679b4fb10167f7cf156f15bd","mallCategoryId":"4","mallSubName":"鹿邑大曲","comments":null},{"mallSubId":"2c9f6c94679b4fb10167f7cf425b15be","mallCategoryId":"4","mallSubName":"毛铺","comments":null},{"mallSubId":"2c9f6c94679b4fb10167f7cf9dc915c0","mallCategoryId":"4","mallSubName":"绵竹","comments":null},{"mallSubId":"2c9f6c94679b4fb10167f7cfbf1c15c1","mallCategoryId":"4","mallSubName":"难得糊涂","comments":null},{"mallSubId":"2c9f6c94679b4fb10167f7cfdd7215c2","mallCategoryId":"4","mallSubName":"牛二爷","comments":null},{"mallSubId":"2c9f6c94679b4fb10167f7cf71e715bf","mallCategoryId":"4","mallSubName":"茅台","comments":null},{"mallSubId":"2c9f6c94679b4fb10167f7d7eda715c3","mallCategoryId":"4","mallSubName":"绵竹","comments":null},{"mallSubId":"2c9f6c94679b4fb10167f7d96e5c15c4","mallCategoryId":"4","mallSubName":"难得糊涂","comments":null},{"mallSubId":"2c9f6c94679b4fb10167f7dab93b15c5","mallCategoryId":"4","mallSubName":"牛二爷","comments":null},{"mallSubId":"2c9f6c94679b4fb10167f7dae16415c6","mallCategoryId":"4","mallSubName":"牛栏山","comments":null},{"mallSubId":"2c9f6c94679b4fb10167f7db11cb15c7","mallCategoryId":"4","mallSubName":"前门","comments":null},{"mallSubId":"2c9f6c94679b4fb10167f7db430c15c8","mallCategoryId":"4","mallSubName":"全兴","comments":null},{"mallSubId":"2c9f6c94679b4fb10167f7db6cac15c9","mallCategoryId":"4","mallSubName":"舍得","comments":null},{"mallSubId":"2c9f6c94679b4fb10167f7db9a4415ca","mallCategoryId":"4","mallSubName":"双沟","comments":null},{"mallSubId":"2c9f6c94679b4fb10167f7dc30b815cb","mallCategoryId":"4","mallSubName":"水井坊","comments":null},{"mallSubId":"2c9f6c94679b4fb10167f7dc543e15cc","mallCategoryId":"4","mallSubName":"四特","comments":null},{"mallSubId":"2c9f6c94679b4fb10167f7dc765c15cd","mallCategoryId":"4","mallSubName":"潭酒","comments":null},{"mallSubId":"2c9f6c94679b4fb10167f7dc988a15ce","mallCategoryId":"4","mallSubName":"沱牌","comments":null},{"mallSubId":"2c9f6c94679b4fb10167f7dcba5a15cf","mallCategoryId":"4","mallSubName":"五粮液","comments":null},{"mallSubId":"2c9f6c94679b4fb10167f7dcd9e815d0","mallCategoryId":"4","mallSubName":"西凤","comments":null},{"mallSubId":"2c9f6c94679b4fb10167f7dcf6d715d1","mallCategoryId":"4","mallSubName":"习酒","comments":null},{"mallSubId":"2c9f6c94679b4fb10167f7dd11b215d2","mallCategoryId":"4","mallSubName":"小白杨","comments":null},{"mallSubId":"2c9f6c94679b4fb10167f7dd2f3c15d3","mallCategoryId":"4","mallSubName":"洋河","comments":null},{"mallSubId":"2c9f6c94679b4fb10167f7dd969115d4","mallCategoryId":"4","mallSubName":"伊力特","comments":null},{"mallSubId":"2c9f6c94679b4fb10167f7ddb16c15d5","mallCategoryId":"4","mallSubName":"张弓","comments":null},{"mallSubId":"2c9f6c94679b4fb10167f7ddd6c715d6","mallCategoryId":"4","mallSubName":"中粮","comments":null},{"mallSubId":"2c9f6c94679b4fb10167f7de126815d7","mallCategoryId":"4","mallSubName":"竹叶青","comments":null}],"comments":null,"image":"http://images.baixingliangfan.cn/firstCategoryPicture/20190131/20190131170036_4477.png"},{"mallCategoryId":"1","mallCategoryName":"啤酒","bxMallSubDto":[{"mallSubId":"2c9f6c946016ea9b016016f79c8e0000","mallCategoryId":"1","mallSubName":"百威","comments":""},{"mallSubId":"2c9f6c94608ff843016095163b8c0177","mallCategoryId":"1","mallSubName":"福佳","comments":""},{"mallSubId":"402880e86016d1b5016016db9b290001","mallCategoryId":"1","mallSubName":"哈尔滨","comments":""},{"mallSubId":"402880e86016d1b5016016dbff2f0002","mallCategoryId":"1","mallSubName":"汉德","comments":""},{"mallSubId":"2c9f6c946449ea7e01647cd6830e0022","mallCategoryId":"1","mallSubName":"崂山","comments":""},{"mallSubId":"2c9f6c946449ea7e01647cd706a60023","mallCategoryId":"1","mallSubName":"林德曼","comments":""},{"mallSubId":"2c9f6c94679b4fb10167f7e1411b15d8","mallCategoryId":"1","mallSubName":"青岛","comments":null},{"mallSubId":"2c9f6c94679b4fb10167f7e1647215d9","mallCategoryId":"1","mallSubName":"三得利","comments":null},{"mallSubId":"2c9f6c94679b4fb10167f7e182e715da","mallCategoryId":"1","mallSubName":"乌苏","comments":null},{"mallSubId":"2c9f6c9468118c9c016811ab16bf0001","mallCategoryId":"1","mallSubName":"雪花","comments":null},{"mallSubId":"2c9f6c9468118c9c016811aa6f440000","mallCategoryId":"1","mallSubName":"燕京","comments":null},{"mallSubId":"2c9f6c94679b4fb10167f7e19b8f15db","mallCategoryId":"1","mallSubName":"智美","comments":null}],"comments":null,"image":"http://images.baixingliangfan.cn/firstCategoryPicture/20190131/20190131170044_9165.png"},{"mallCategoryId":"2","mallCategoryName":"葡萄酒","bxMallSubDto":[{"mallSubId":"2c9f6c9460337d540160337fefd60000","mallCategoryId":"2","mallSubName":"澳大利亚","comments":""},{"mallSubId":"402880e86016d1b5016016e083f10010","mallCategoryId":"2","mallSubName":"德国","comments":""},{"mallSubId":"402880e86016d1b5016016df1f92000c","mallCategoryId":"2","mallSubName":"法国","comments":""},{"mallSubId":"2c9f6c94621970a801626a40feac0178","mallCategoryId":"2","mallSubName":"南非","comments":""},{"mallSubId":"2c9f6c94679b4fb10167f7e5c9a115dc","mallCategoryId":"2","mallSubName":"葡萄牙","comments":null},{"mallSubId":"2c9f6c94679b4fb10167f7e5e68f15dd","mallCategoryId":"2","mallSubName":"西班牙","comments":null},{"mallSubId":"2c9f6c94679b4fb10167f7e609f515de","mallCategoryId":"2","mallSubName":"新西兰","comments":null},{"mallSubId":"2c9f6c94679b4fb10167f7e6286a15df","mallCategoryId":"2","mallSubName":"意大利","comments":null},{"mallSubId":"2c9f6c94679b4fb10167f7e6486615e0","mallCategoryId":"2","mallSubName":"智利","comments":null},{"mallSubId":"2c9f6c94679b4fb10167f7e66c6815e1","mallCategoryId":"2","mallSubName":"中国","comments":null}],"comments":null,"image":"http://images.baixingliangfan.cn/firstCategoryPicture/20190131/20190131170053_878.png"},{"mallCategoryId":"3","mallCategoryName":"清酒洋酒","bxMallSubDto":[{"mallSubId":"402880e86016d1b5016016e135440011","mallCategoryId":"3","mallSubName":"清酒","comments":""},{"mallSubId":"402880e86016d1b5016016e171cc0012","mallCategoryId":"3","mallSubName":"洋酒","comments":""}],"comments":null,"image":"http://images.baixingliangfan.cn/firstCategoryPicture/20190131/20190131170101_6957.png"},{"mallCategoryId":"5","mallCategoryName":"保健酒","bxMallSubDto":[{"mallSubId":"2c9f6c94609a62be0160a02d1dc20021","mallCategoryId":"5","mallSubName":"黄酒","comments":""},{"mallSubId":"2c9f6c94648837980164883ff6980000","mallCategoryId":"5","mallSubName":"药酒","comments":""}],"comments":null,"image":"http://images.baixingliangfan.cn/firstCategoryPicture/20190131/20190131170110_6581.png"},{"mallCategoryId":"2c9f6c946449ea7e01647ccd76a6001b","mallCategoryName":"预调酒","bxMallSubDto":[{"mallSubId":"2c9f6c946449ea7e01647d02f6250026","mallCategoryId":"2c9f6c946449ea7e01647ccd76a6001b","mallSubName":"果酒","comments":""},{"mallSubId":"2c9f6c946449ea7e01647d031bae0027","mallCategoryId":"2c9f6c946449ea7e01647ccd76a6001b","mallSubName":"鸡尾酒","comments":""},{"mallSubId":"2c9f6c946449ea7e01647d03428f0028","mallCategoryId":"2c9f6c946449ea7e01647ccd76a6001b","mallSubName":"米酒","comments":""}],"comments":null,"image":"http://images.baixingliangfan.cn/firstCategoryPicture/20190131/20190131170124_4760.png"},{"mallCategoryId":"2c9f6c946449ea7e01647ccf3b97001d","mallCategoryName":"下酒小菜","bxMallSubDto":[{"mallSubId":"2c9f6c946449ea7e01647dc18e610035","mallCategoryId":"2c9f6c946449ea7e01647ccf3b97001d","mallSubName":"熟食","comments":""},{"mallSubId":"2c9f6c946449ea7e01647dc1d9070036","mallCategoryId":"2c9f6c946449ea7e01647ccf3b97001d","mallSubName":"火腿","comments":""},{"mallSubId":"2c9f6c946449ea7e01647dc1fc3e0037","mallCategoryId":"2c9f6c946449ea7e01647ccf3b97001d","mallSubName":"速冻食品","comments":""}],"comments":null,"image":"http://images.baixingliangfan.cn/firstCategoryPicture/20190131/20190131170133_4419.png"},{"mallCategoryId":"2c9f6c946449ea7e01647ccdb0e0001c","mallCategoryName":"饮料","bxMallSubDto":[{"mallSubId":"2c9f6c946449ea7e01647d09cbf6002d","mallCategoryId":"2c9f6c946449ea7e01647ccdb0e0001c","mallSubName":"茶饮","comments":""},{"mallSubId":"2c9f6c946449ea7e01647d09f7e8002e","mallCategoryId":"2c9f6c946449ea7e01647ccdb0e0001c","mallSubName":"水饮","comments":""},{"mallSubId":"2c9f6c946449ea7e01647d0a27e1002f","mallCategoryId":"2c9f6c946449ea7e01647ccdb0e0001c","mallSubName":"功能饮料","comments":""},{"mallSubId":"2c9f6c946449ea7e01647d0b1d4d0030","mallCategoryId":"2c9f6c946449ea7e01647ccdb0e0001c","mallSubName":"果汁","comments":""},{"mallSubId":"2c9f6c946449ea7e01647d14192b0031","mallCategoryId":"2c9f6c946449ea7e01647ccdb0e0001c","mallSubName":"含乳饮料","comments":""},{"mallSubId":"2c9f6c946449ea7e01647d24d9600032","mallCategoryId":"2c9f6c946449ea7e01647ccdb0e0001c","mallSubName":"碳酸饮料","comments":""}],"comments":null,"image":"http://images.baixingliangfan.cn/firstCategoryPicture/20190131/20190131170143_361.png"},{"mallCategoryId":"2c9f6c946449ea7e01647cd108b60020","mallCategoryName":"乳制品","bxMallSubDto":[{"mallSubId":"2c9f6c946449ea7e01647dd4ac8c0048","mallCategoryId":"2c9f6c946449ea7e01647cd108b60020","mallSubName":"常温纯奶","comments":""},{"mallSubId":"2c9f6c946449ea7e01647dd4f6a40049","mallCategoryId":"2c9f6c946449ea7e01647cd108b60020","mallSubName":"常温酸奶","comments":""},{"mallSubId":"2c9f6c946449ea7e01647dd51ab7004a","mallCategoryId":"2c9f6c946449ea7e01647cd108b60020","mallSubName":"低温奶","comments":""}],"comments":null,"image":"http://images.baixingliangfan.cn/firstCategoryPicture/20190131/20190131170151_9234.png"},{"mallCategoryId":"2c9f6c946449ea7e01647ccfddb3001e","mallCategoryName":"休闲零食","bxMallSubDto":[{"mallSubId":"2c9f6c946449ea7e01647dc51d93003c","mallCategoryId":"2c9f6c946449ea7e01647ccfddb3001e","mallSubName":"方便食品","comments":""},{"mallSubId":"2c9f6c946449ea7e01647dd204dc0040","mallCategoryId":"2c9f6c946449ea7e01647ccfddb3001e","mallSubName":"面包糕点","comments":""},{"mallSubId":"2c9f6c946449ea7e01647dd22f760041","mallCategoryId":"2c9f6c946449ea7e01647ccfddb3001e","mallSubName":"糖果巧克力","comments":""},{"mallSubId":"2c9f6c946449ea7e01647dd254530042","mallCategoryId":"2c9f6c946449ea7e01647ccfddb3001e","mallSubName":"膨化食品","comments":""},{"mallSubId":"2c9f6c94679b4fb10167f7fa132b15e7","mallCategoryId":"2c9f6c946449ea7e01647ccfddb3001e","mallSubName":"坚果炒货","comments":null},{"mallSubId":"2c9f6c94679b4fb10167f7f4bfc415e2","mallCategoryId":"2c9f6c946449ea7e01647ccfddb3001e","mallSubName":"肉干豆干","comments":null},{"mallSubId":"2c9f6c94679b4fb10167f7f5027a15e3","mallCategoryId":"2c9f6c946449ea7e01647ccfddb3001e","mallSubName":"饼干","comments":null},{"mallSubId":"2c9f6c94679b4fb10167f7f530fd15e4","mallCategoryId":"2c9f6c946449ea7e01647ccfddb3001e","mallSubName":"冲调","comments":null},{"mallSubId":"2c9f6c94683a6b0d016846b49436003b","mallCategoryId":"2c9f6c946449ea7e01647ccfddb3001e","mallSubName":"休闲水果","comments":null}],"comments":null,"image":"http://images.baixingliangfan.cn/firstCategoryPicture/20190131/20190131170200_7553.png"},{"mallCategoryId":"2c9f6c946449ea7e01647cd08369001f","mallCategoryName":"粮油调味","bxMallSubDto":[{"mallSubId":"2c9f6c946449ea7e01647dd2e8270043","mallCategoryId":"2c9f6c946449ea7e01647cd08369001f","mallSubName":"油/粮食","comments":""},{"mallSubId":"2c9f6c946449ea7e01647dd31bca0044","mallCategoryId":"2c9f6c946449ea7e01647cd08369001f","mallSubName":"调味品","comments":""},{"mallSubId":"2c9f6c946449ea7e01647dd35a980045","mallCategoryId":"2c9f6c946449ea7e01647cd08369001f","mallSubName":"酱菜罐头","comments":""}],"comments":null,"image":"http://images.baixingliangfan.cn/firstCategoryPicture/20181212/20181212115842_9733.png"},{"mallCategoryId":"2c9f6c9468a85aef016925444ddb271b","mallCategoryName":"积分商品","bxMallSubDto":[],"comments":null,"image":"http://images.baixingliangfan.cn/firstCategoryPicture/20190225/20190225232703_9950.png"}]};



  //被选中的下标
  int selectIndex = 0;
  //选中的模型
  LeftGategoryModel selectModel;
  Widget getItem(int index) {
    var model = dataArr[index];
    bool isClick = false;
    isClick = (selectIndex == index) ? true : false;

    return Container(
      width: ScreenUtil().setWidth(150),
      height: ScreenUtil().setHeight(80),
      padding: EdgeInsets.only(left: 20, top: 20),
      decoration: BoxDecoration(
        color: isClick ? Colors.black12 : Colors.white,
        border: Border(
          bottom: BorderSide(width: 1, color: Colors.black12)
        )
      ),
      child: InkWell(
        onTap: (){
          Provide.value<GateroryProvide>(context).selectedModel(model);
          setState(() {
            selectIndex = index;
          });
        },
        child: Text(
          model.mallCategoryName,
        ),
      ),
    );

  }


  void getData(){
    dataArr = Autogenerated.fromJson(json).data;
  }

  List<LeftGategoryModel> dataArr;
  @override
  Widget build(BuildContext context) {
    getData();
    // TODO: implement build
    return Container(
      width: ScreenUtil().setWidth(180),
      decoration: BoxDecoration(
        color: Colors.white,
        border:Border(
          right: BorderSide(
            width: 1,
            color: Colors.black12,
          )
        ),
      ),
      child: dataArr.length == 0 ? Container() : ListView.builder(
          itemCount: dataArr.length,
          itemBuilder: (context, index){
            return getItem(index);
          },

      ),
    );
  }
}


class CategoryTitleView extends StatefulWidget {
  CategoryTitleState createState() => CategoryTitleState();

}

class CategoryTitleState extends State<CategoryTitleView> {



  List<BxMallSubDtoModel> dataArrr = [];
  Widget getItem(BxMallSubDtoModel model) {
    return Container(
      height: ScreenUtil().setHeight(60),
      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: InkWell(
        child: Text(
          model.mallSubName,
          style: TextStyle(
            color: Colors.black,
            fontSize: 15,
          ),

        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: ScreenUtil().setHeight(60),
      width: ScreenUtil().setWidth(600),
      child: Provide<GateroryProvide>(
        builder: (context, child, objc){
          dataArrr = objc.leftModel.bxMallSubDto;
          return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: dataArrr.length,
            itemBuilder: (context, index){
              return getItem(dataArrr[index]);
            },
          );
        },
      ),
    );
  }


}









