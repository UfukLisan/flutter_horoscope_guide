//      Author: Ufuk Lisan            E-mail=lisanufuk@gmail.com
//      https://github.com/UfukLisan

import 'package:flutter/material.dart';
import 'package:flutter_horoscope_guide/horoscope_detail.dart';
import 'package:flutter_horoscope_guide/horoscope_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Burç Rehberi",
      initialRoute: "/",
      routes: {
        "/": (context) => HoroscopeList(),
        "horoscopeList": (context) => HoroscopeList(),
      },
      onGenerateRoute: (RouteSettings settings) {
        List<String> pathElements = settings.name.split("/");
        if (pathElements[1] == 'horoscopeDetail') {
          return MaterialPageRoute(
              builder: (context) =>
                  HoroscopeDetail(int.parse(pathElements[2])));
        }
        return null;
      },
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      //home: HoroscopeList(),
    );
  }
}
