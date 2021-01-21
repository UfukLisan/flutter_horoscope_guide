import 'package:flutter/material.dart';
import 'package:flutter_horoscope_guide/horoscope_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Horoscope Guide",
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: HoroscopeList(),
    );
  }
}
