import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage() : super();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Image.asset('assets/images/logo.png'),
        ],
      ),
    );
  }
}
