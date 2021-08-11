
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

    var stream = Stream.periodic(Duration(seconds: 1) , (count) => count);

    var subscription = stream.listen((event) {
      print(event);
    });

    Future.delayed(Duration(seconds: 5) , () => {
      subscription.pause()
    });

    Future.delayed(Duration(seconds: 10) , () => {
      subscription.resume()
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
