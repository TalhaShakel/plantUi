// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/body.dart';

class page1 extends StatelessWidget {
  const page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          PIcture_sidebar(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:kDefaultPadding),
            child: Row(
              children: [
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: "PLANT WORLD\n",
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 33,
                      )
                      ),
                      
                      TextSpan(
                        text: "PAKISTAN",
                        style: TextStyle(
                          fontSize: 20,
                          color: kPrimaryColor,
                          fontWeight: FontWeight.w300
                        )
                      )
                ]
                )
                ),
                Spacer(),
                Text("\$999",
                style: TextStyle(
                  color: kPrimaryColor,
                  fontWeight: FontWeight.w800,
                  fontSize: 22
                ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class PIcture_sidebar extends StatelessWidget {
  const PIcture_sidebar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding * 3),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.8,
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: kDefaultPadding * 3),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                    ),
                    IconButton(
                        padding:
                            EdgeInsets.symmetric(horizontal: kDefaultPadding),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: SvgPicture.asset("assets/icon/back_arrow.svg")),
                    Spacer(),
                    icons(
                      icons1: "assets/icon/sun.svg",
                    ),
                    icons(
                      icons1: "assets/icon/icon_2.svg",
                    ),
                    icons(
                      icons1: "assets/icon/icon_3.svg",
                    ),
                    icons(
                      icons1: "assets/icon/icon_4.svg",
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.8,
              width: MediaQuery.of(context).size.width * 0.7,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(63),
                    topLeft: Radius.circular(63),
                  ),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 10,
                        color: kPrimaryColor.withOpacity(0.29)),
                  ],
                  image: DecorationImage(
                      alignment: Alignment.centerLeft,
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/img.png"))),
            ),
          ],
        ),
      ),
    );
  }
}

class icons extends StatelessWidget {
  const icons({
    Key? key,
    required this.icons1,
  }) : super(key: key);
  final String icons1;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      padding: EdgeInsets.all(kDefaultPadding / 2),
      height: 62,
      width: 62,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            offset: Offset(0, 10),
            blurRadius: 20,
            color: kPrimaryColor.withOpacity(0.22))
      ]),
      child: SvgPicture.asset(icons1),
    );
  }
}
