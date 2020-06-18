import 'dart:math';
import 'package:flutter/material.dart';

class KeyDemo extends StatefulWidget {
  @override
  _KeyDemoState createState() => _KeyDemoState();
}

class _KeyDemoState extends State<KeyDemo> {

//  List<Widget> items = [
//    StlItem('aaaaa'),
//    StlItem('bbbbb'),
//    StlItem('ccccc'),
//  ];

//  List<Widget> items = [
//    StfulItem('aaaaa'),
//    StfulItem('bbbbb'),
//    StfulItem('ccccc'),
//  ];
/*
LocalKey,：用作diff算法的核心所在，用作Element和Widget进行比较。
        ValueKey：以一个数据作为可以，可以是 数字，字符串。
        ObjectKey：以Object对象作为Key，Text(‘123’)。
        UniqueKey：可以保证Key的唯一性，一旦使用了UniqueKey，就不存在Element复用了。

 LocalKey:
  Keys must be unique amongst the [Element]s with the same parent. By
   contrast, [GlobalKey]s must be unique across the entire app.

 */

  List<Widget> items = [
    StfulItem('aaaaa',key: ValueKey(112),),
    StfulItem('bbbbb',key: ObjectKey(Text('sds')),),
    StfulItem('ccccc',key: UniqueKey(),),
//    StfulItem('ddddd',key: UniqueKey(),),
//    StfulItem('eeeee',key: UniqueKey(),),

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('KeyDemo'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: items,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
          onPressed: (){
          if (items.length > 0) {
            items.removeAt(0);
            setState(() {});
          } else {
          }}),
    );
  }
}
class StfulItem extends StatefulWidget {
  final title;

//  const StfulItem(this.title);

  const StfulItem(this.title,{Key key}) : super(key: key);

  @override
  _StfulItemState createState() => _StfulItemState();
}

class _StfulItemState extends State<StfulItem> {

  final _color = Color.fromRGBO(Random().nextInt(256), Random().nextInt(256), Random().nextInt(256), 1);

  @override
  Widget build(BuildContext context) {

    return Container(
      width: 100,height: 100,
      color: _color,
      child: Text(widget.title),
    );
  }
}

class StlItem extends StatelessWidget {
  final title;
  StlItem(this.title);
  final _color = Color.fromRGBO(Random().nextInt(256), Random().nextInt(256), Random().nextInt(256), 1);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,height: 100,
      color: _color,
      child: Text(title),
    );
  }
}

