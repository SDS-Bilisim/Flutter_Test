import 'dart:convert';

import 'package:flutter/material.dart';

import 'homepage.dart';
void main() {
  runApp(MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
      appBarTheme: AppBarTheme(backgroundColor: Colors.white)
    ),
    home: const HomePage(),
  ));
}

