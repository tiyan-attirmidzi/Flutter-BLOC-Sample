import 'package:bloc_sample/Counter.dart';
import 'package:bloc_sample/Counter_bloc.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BLOC Sample',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'BLOC Sample'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    bloc.updateCount();                                     // Update Counter Melalui Bloc
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Counter(),                                    // Pada bagian body ini kita langsung memamnggil class Counter()
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,                     // Pada saat di tekan tombol + maka akan memanggil method _incrementCounter
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
