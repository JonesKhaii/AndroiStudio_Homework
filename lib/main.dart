import 'package:flutter/material.dart';

void main (){
  runApp(MaterialApp(
    home:SafeArea(
      child:Scaffold(
        body: Center(child: MyWidget2(false)),
        // appBar: AppBar(
        //   backgroundColor: Colors.red,
        //   title: const Text('Tu hoc Flutter'),
        //
        // ),
        // body: const Center(
        //   child: Text('Hello world'),
        //
        // )
      )
    ),
    debugShowCheckedModeBanner:false ,
  ));
}

class MyWidget extends StatelessWidget{
  final bool loading;

  MyWidget(this.loading);

  @override
  Widget build(BuildContext context) {
    return loading ? CircularProgressIndicator() : const Text('State');

  }

}

class MyWidget2 extends StatefulWidget{
  final bool loading;


  MyWidget2(this.loading);

  @override
  State<StatefulWidget> createState() {
    return MyWidget2State();

  }

}

class MyWidget2State extends State<MyWidget2> {
  late bool _localloading;

  @override
  void initState() {
    _localloading= widget.loading;

  }
  Widget build(BuildContext context) {
    return _localloading ? CircularProgressIndicator() : FloatingActionButton(onPressed: onClickButton);
  }
  void onClickButton(){
    setState(() {
      _localloading = true;
    });
  }
}