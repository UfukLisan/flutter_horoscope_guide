//      Author: Ufuk Lisan            E-mail=lisanufuk@gmail.com
//      https://github.com/UfukLisan

import 'package:flutter/material.dart';
import 'package:flutter_horoscope_guide/models/horoscope.dart';
import 'package:flutter_horoscope_guide/utilities/horoscopes.dart';

class HoroscopeList extends StatelessWidget {
  List<Horoscope> allHoroscope = dataSource();

  @override
  Widget build(BuildContext context) {
    //List<Horoscope> allHoroscope = dataSource();
    return Scaffold(
      appBar: AppBar(
        title: Text("Burç Rehberi"),
      ),
      body: ListReady(),
    );
  }

  static List<Horoscope> dataSource() {
    List<Horoscope> horoscopes = [];
    for (int i = 0; i < 12; i++) {
      String littleImage =
          Strings.HOROSCOPE_NAMES[i].toLowerCase() + "${i + 1}.png";
      String bigImage =
          Strings.HOROSCOPE_NAMES[i].toLowerCase() + "_buyuk" + "${i + 1}.png";
      Horoscope addHoroscope = Horoscope(
          Strings.HOROSCOPE_NAMES[i],
          Strings.HOROSCOPE_DATES[i],
          Strings.HOROSCOPE_GENERAL_CHARACTERISTICS[i],
          littleImage,
          bigImage);
      horoscopes.add(addHoroscope);
    }
    return horoscopes;
  }

  Widget ListReady() {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return ARowHoroscope(context, index);
      },
      itemCount: allHoroscope.length,
    );
  }

  Widget ARowHoroscope(BuildContext context, int index) {
    Horoscope addListNow = allHoroscope[index];
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Card(
        elevation: 4,
        child: ListTile(
          onTap: () => Navigator.pushNamed(context, "/horoscopeDetail/$index"),
          leading: Image.asset(
            "images/" + addListNow.horoscopeLittleImage,
            width: 64,
            height: 64,
          ),
          title: Text(
            addListNow.horoscopeName,
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w400,
                color: Colors.purple),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: Text(
              addListNow.horoscopeDate,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            color: Colors.deepPurpleAccent,
          ),
        ),
      ),
    );
  }
}
