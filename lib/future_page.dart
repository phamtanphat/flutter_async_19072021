import 'dart:async';

import 'package:flutter/material.dart';
class FuturePage extends StatefulWidget {

  @override
  _FuturePageState createState() => _FuturePageState();
}

class _FuturePageState extends State<FuturePage> {
  @override
  void didUpdateWidget(covariant FuturePage oldWidget) {
    super.didUpdateWidget(oldWidget);

  }

  Future tinhTong(int a , int b){
    Completer completer = Completer();

    Future.delayed(Duration(seconds:  2) , () {
      var result = a + b;
      if (result > 0){
        completer.complete(result);
      }else{
        completer.completeError(Exception("Gia tri be hon 0"));
      }
    });

    return completer.future;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Future Page Demo"),
      ),
      body: Container(
        child: Center(
          child: FutureBuilder(
            future: tinhTong(-1, -1),
            builder: (context , snapshot){
              if (snapshot.hasError){
                return Text(snapshot.error.toString());
              }
              if (snapshot.hasData){
                return Text(snapshot.data.toString());
              }
              return Text("Waiting");
            },
          ),
        ),
      ),
    );
  }
}
