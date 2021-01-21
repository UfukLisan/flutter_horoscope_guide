import 'package:flutter/material.dart';
import 'package:flutter_horoscope_guide/horoscope_list.dart';

import 'models/horoscope.dart';

class HoroscopeDetail extends StatelessWidget {
  int index;

  HoroscopeDetail(this.index);

  Horoscope chosenHoroscope;

  @override
  Widget build(BuildContext context) {
    chosenHoroscope = HoroscopeList().allHoroscope[index];
    return Scaffold(
      primary: false,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                chosenHoroscope.horoscopeName + " Burcu ve Özellikleri",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
              background: Image.asset(
                "images/" + chosenHoroscope.horoscopeBigImage,
                fit: BoxFit.cover,
              ),
              centerTitle: true,
            ),
            expandedHeight: 300,
            pinned: true,
            primary: true,
            snap: false,
            backgroundColor: Colors.purple[200],
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              child: Text(
                chosenHoroscope.horoscopeDetail,
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
