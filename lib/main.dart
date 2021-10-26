// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'body.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Head(),
    );
  }
}

class Head extends StatelessWidget {
  const Head({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        leading: IconButton(
            onPressed: () {}, icon: SvgPicture.asset("assets/icon/menu.svg")),
      ),
      body: Header(),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(
          left: kDefaultPadding*2,
          right: kDefaultPadding*2,
          bottom: kDefaultPadding,
        ),
        // color: kPrimaryColor,
        height: MediaQuery.of(context).size.height * 0.1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset("assets/icon/flower.svg")),
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset("assets/icon/heart-icon.svg")),
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset("assets/icon/user-icon.svg")),
          ],
        ),
      ),
    );
  }
}
