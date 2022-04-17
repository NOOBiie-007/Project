import 'package:flutter/material.dart';
import 'package:myapp/pages/home.dart';

int icnt = 0, ecnt = 0;
void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'My App',
    home: Homepage(icnt, ecnt),
  ));
}
