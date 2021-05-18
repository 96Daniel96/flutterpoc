import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var counter = 0;

  void next() {
    setState(() {
      counter = counter + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    /** Scaffold creates a default page that most apps use, very similar to Paper */
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('My First App')),
            body: Column(children: [
              Text(
                'Counter: ' + counter.toString(),
              ),
              ElevatedButton(child: Text('Save'), onPressed: next)
            ])));
  }
}
