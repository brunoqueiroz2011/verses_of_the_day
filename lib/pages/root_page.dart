import 'package:flutter/material.dart';
import 'package:verses_of_the_day/pages/home_page.dart';

class RootPage extends StatelessWidget {
  const RootPage() : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Versiculos do Dia"),
      ),
      body: const HomePage(),
    );
  }
}
