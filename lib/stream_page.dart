
import 'package:flutter/material.dart';
class StreamPage extends StatefulWidget {

  @override
  _StreamPageState createState() => _StreamPageState();
}

class _StreamPageState extends State<StreamPage> {
  @override
  void didUpdateWidget(covariant StreamPage oldWidget) {
    super.didUpdateWidget(oldWidget);
    // var future = Future.delayed(Duration(seconds: 2) , () => 10);
    //
    // Stream.fromFuture(future).listen((event) {
    //   print(event);
    // });

    // var iterable = Iterable.generate(5 , (index) => index * 2);
    //
    // Stream.fromIterable(iterable).listen((event) {
    //   print(event);
    // });

    var stream1 = Stream.periodic(Duration(seconds: 1) , (count) => count).asBroadcastStream();

    stream1.listen((event) {
      print("Stream 1 " + event.toString());
    });

    stream1.listen((event) {
      print("Stream 2 " + event.toString());
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stream Demo"),
      ),
      body: Container(
        child: Center(
          child: Text("Demo"),
        ),
      ),
    );
  }
}
