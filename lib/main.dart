import 'package:flutter/material.dart';
import 'package:verses_of_the_day/pages/root_page.dart';

void main() {
  runApp(
    MaterialApp(
        title: "Versiculos do Dia",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.green,
        ),
        home: const RootPage()),
  );
}
