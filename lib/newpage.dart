// ignore_for_file: camel_case_types, unused_import

import 'package:flutter/material.dart';
import 'package:plant_app/body.dart';
import 'package:plant_app/page1.dart';
class newpage extends StatelessWidget {
  const newpage ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: prefer_const_constructors
      body:page1(),
    );
  }
}