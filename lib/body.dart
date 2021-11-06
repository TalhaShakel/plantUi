// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables, duplicate_ignore, non_constant_identifier_names, prefer_typing_uninitialized_variables, prefer_function_declarations_over_variables

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'newpage.dart';
var press =(){
 
};


const kPrimaryColor = Color(0xFF0C9869);
const kTextColor = Color(0xFF3C4046);
const kBackgroundColor = Color(0xFFF9F8FD);

const double kDefaultPadding = 20.0;

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: <Widget>[
          headerwithsearchbox(),
          Title_with_More_button(
            title: "Recomanded",
            more: "More",
          ),
          recomanded_plant_card(),
          Title_with_More_button(
            title: "Featured PlanT",
            more: "More",
          ),
          Fetured_plant_recomanded(),
        ],
      ),
    );
  }
}

class Fetured_plant_recomanded extends StatelessWidget {
  const Fetured_plant_recomanded({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Fetured_plant_card(
            Image: "assets/images/bottom_img_2.png",
          ),
          Fetured_plant_card(
            Image: "assets/images/image_2.png",
          ),
          Fetured_plant_card(
            Image: "assets/images/bottom_img_1.png",
          ),
          Fetured_plant_card(
            Image: "assets/images/bottom_img_2.png",
          ),
        ],
      ),
    );
  }
}

class Fetured_plant_card extends StatelessWidget {
  const Fetured_plant_card({
    Key? key,
    this.Image,
  }) : super(key: key);
  final Image;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.only(
            top: kDefaultPadding / 2,
            bottom: kDefaultPadding / 2,
            left: kDefaultPadding / 2),
        height: 185,
        width: MediaQuery.of(context).size.width * 0.8,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image:
                DecorationImage(fit: BoxFit.cover, image: AssetImage(Image))),
      ),
    );
  }
}

class recomanded_plant_card extends StatelessWidget {
  const recomanded_plant_card({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          PlantCard(
            image: "assets/images/image_2.png",
            title: "SAMANTA",
            country: "Russia",
            price: "\$998",
            press: ( ){
            },
          ),
          PlantCard(
            image: "assets/images/image_1.png",
            title: "SAMANTA",
            country: "Russia",
            price: "\$999",
            press: (){
              newpage();
            },
          ),
          PlantCard(
            press: (){},
            image: "assets/images/image_3.png",
            title: "SAMANTA",
            country: "Russia",
            price: "\$999",
          ),
          PlantCard(
            press: (){},
            image: "assets/images/image_1.png",
            title: "SAMANTA",
            country: "Russia",
            price: "\$999",
          ),
          PlantCard(
            press: (){},
            image: "assets/images/image_2.png",
            title: "SAMANTA",
            country: "Russia",
            price: "\$999",
          ),
        ],
      ),
    );
  }
}

class PlantCard extends StatelessWidget {
  const PlantCard({
    Key? key,
    required this.country,
    required this.price,
    required this.title,
    required this.image,
    required this.press,
  }) : super(key: key);
  final String image, title, country, price;
  final Function press;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, top: 5, bottom: 20),
      width: MediaQuery.of(context).size.width * 0.4,
      child: Column(
        children: [
          Image.asset(image),
          GestureDetector(
            onTap: press(),
            child: Container(
              padding: EdgeInsets.all(1),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(0.23))
                  ]),
              child: ListTile(
                title: Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 11),
                ),
                subtitle: Text(
                  country,
                  style: TextStyle(
                      fontSize: 10,
                      color: kPrimaryColor,
                      fontWeight: FontWeight.bold),
                ),
                trailing: Text(
                  price,
                  style: TextStyle(
                      fontWeight: FontWeight.w500, color: kPrimaryColor),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
class Title_with_More_button extends StatelessWidget {
  const Title_with_More_button({
    Key? key,
    required this.title,
    required this.more,
  }) : super(key: key);
  final String title;
  final String more;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          Spacer(),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: kPrimaryColor, // background
                onPrimary: Colors.white, // foreground
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => newpage()
             )
             );
              },
              child: Text(more)),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 7,
              color: kPrimaryColor.withOpacity(0.2),
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: camel_case_types
class headerwithsearchbox extends StatelessWidget {
  const headerwithsearchbox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: kDefaultPadding * 2.5,
      ),
      height: MediaQuery.of(context).size.height * 0.28,
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(
              left: 30,
              right: 30,
              bottom: 20,
            ),
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.height * 0.24,
            decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(36),
                  bottomRight: Radius.circular(36),
                )),
            child: Row(
              children: [
                Text(
                  "Hi Talha!",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 29),
                ),
                Spacer(),
                Image.asset("assets/images/logo.png")
              ],
            ),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.1),
                margin: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.1),
                height: 54,
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: Colors.green.withOpacity(0.23),
                      )
                    ]),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search",
                          hintStyle: TextStyle(
                            color: Colors.green.withOpacity(0.5),
                          ),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          // prefixIcon: Icon(Icons.search),
                        ),
                      ),
                    ),
                    SvgPicture.asset("assets/icon/search.svg"),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
