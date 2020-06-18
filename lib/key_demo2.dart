import 'package:flutter/material.dart';

// StatelessWidget 包含着  StatefulWidget ，改变StatefulWidget 的state，使用GlobalKey
// 当然也可以使用 回调方法来实现
class GlobalKeyDemo extends StatelessWidget {

  final GlobalKey<_ChilfPageState> _globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GlobalKeyDemo'),
      ),
      body: ChilfPage(key: _globalKey,),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          _globalKey.currentState.count++;
          _globalKey.currentState.setState(() { });
        },
      ),
    );
  }
}

class ChilfPage extends StatefulWidget {

  ChilfPage({Key key}): super(key:key);

  @override
  _ChilfPageState createState() => _ChilfPageState();
}

class _ChilfPageState extends State<ChilfPage> {
  int count = 0;
  String data = 'hello';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(count.toString(),style: TextStyle(fontSize: 50,color: Colors.lightGreenAccent),),
          Text(data),
        ],
      ),
    );
  }
}
