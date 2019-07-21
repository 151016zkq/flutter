import 'package:flutter/material.dart';
import 'package:provide/provide.dart';
import '../provide/provide.dart';
class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('会员中心'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Counter(),
            CustomBtn()
          ],
        ),
      )
    );
  }
}

class Counter extends StatelessWidget {
  int count = 1;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Center(
        child:Provide<Num>(
          builder: (context, child, num){
            return Text('${num.value}');
          },
        ),
      ),
    );
  }
}
class CustomBtn extends StatelessWidget {

  void configCount() {

  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.only(top: 10),
      child: RaisedButton(onPressed: (){
        Provide.value<Num>(context).increment();
      },
        child: Text('点击增加一'),
      ),
    );
  }
}


