import 'package:flutter/material.dart';
import 'package:bloc_sample/Counter_bloc.dart';
import 'package:bloc_sample/Counter_provider.dart';

class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {

  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: bloc.getCount,                      // Menghitung jumlah BLOC
      initialData: CounterProvider().count,       // Menghitung jumlah counter provider
      builder: (context, snapshot) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You Have Pushed The Button This Many Times'
            ),
            Text(
              '${snapshot.data}',                 // Menampilkan data counter
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
    );
  }
}