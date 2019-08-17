import 'dart:async';
import 'package:bloc_sample/Counter_provider.dart';

class CounterBloc {

  final counterCountroller            = StreamController();                          // Membuat Sebuah Stream Countroller
  final CounterProvider provider      = CounterProvider();                           // Membuat Sebuah Counter Provider

  Stream get getCount => counterCountroller.stream;

  void updateCount() {
    provider.increaseCount();
    counterCountroller.sink.add(provider.count);                                      // Menambahkan Provider Ke Dalam counterCountroller
  }

  void dispose() {
    counterCountroller.close();                                                       // Menutup counterCountroller Ketika Tidak Digunakan
  }

}

final bloc = CounterBloc();                                                           // Menjadikan Class CounterBloc() Sebagai Sebuah Object Agar Bisa Digunakan Pada Kelas Lain