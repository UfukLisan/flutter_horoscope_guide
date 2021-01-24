//      Author: Ufuk Lisan            E-mail=lisanufuk@gmail.com
//      https://github.com/UfukLisan

import 'package:flutter/material.dart';
import 'package:flutter_horoscope_guide/horoscope_list.dart';
import 'package:palette_generator/palette_generator.dart';

import 'models/horoscope.dart';

class HoroscopeDetail extends StatefulWidget {
  int index;

  HoroscopeDetail(this.index);

  @override
  HoroscopeDetailState createState() => HoroscopeDetailState();
}

class HoroscopeDetailState extends State<HoroscopeDetail> {
  Horoscope chosenHoroscope;
  Color dominantColor = Colors.purple.shade200;
  PaletteGenerator paletteGenerator;

  void initState() {
    super.initState();
    chosenHoroscope = HoroscopeList().allHoroscope[widget.index];
    findDominantColor();
  }

  void findDominantColor() {
    Future<PaletteGenerator> fPaletteGenerator =
        PaletteGenerator.fromImageProvider(
            AssetImage("images/" + chosenHoroscope.horoscopeBigImage));
    fPaletteGenerator.then((value) {
      paletteGenerator = value;
      debugPrint(
          "secilen renk " + paletteGenerator.dominantColor.color.toString());
    });
    setState(() {
      //dominantColor = paletteGenerator.dominantColor.color;
    });
  }

  @override
  Widget build(BuildContext context) {
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
            backgroundColor:
                dominantColor != null ? dominantColor : Colors.purple[200],
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.all(8),
              //color: Colors.black38,
              child: SingleChildScrollView(
                child: Text(
                  chosenHoroscope.horoscopeDetail,
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
