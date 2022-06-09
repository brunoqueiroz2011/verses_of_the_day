import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage() : super();

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _verses = [
    "Escutem-me, vocês de coração obstinado, vocês que estão longe da retidão. (Is 46:12)",
    "Pois ele só pensa nos gastos. Ele lhe diz: \"Coma e beba! \", mas não fala com sinceridade. (Pv 23:7)",
    "Filho de Amarias, filho de Azarias, filho de Meraiote, (Ed 7:3)",
    "O Senhor tinha dito a Moisés: \"O faraó não lhes dará ouvidos, a fim de que os meus prodígios se multipliquem no Egito\". (Ex 11:9)",
    "Advertência contra Nínive. Livro da visão de Naum, de Elcós. (Na 1:1)",
    "Depois passam como o vento e prosseguem; homens carregados de culpa, e que têm por deus a sua própria força\". (Hc 1:11)",
    "A graça, a misericórdia e a paz da parte de Deus Pai e de Jesus Cristo, seu Filho, estarão conosco em verdade e em amor. (2Jo 1:3)",
  ];
  var _randomVerse = "Clique Abaixo para gerar um versiculo!";

  void generateVerse() {
    var numberRandom = Random().nextInt(_verses.length);

    setState(() {
      _randomVerse = _verses[numberRandom].toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo.png'),
            Text(
              _randomVerse,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w200,
              ),
              textAlign: TextAlign.center,
            ),
            ElevatedButton(
              onPressed: generateVerse,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                minimumSize: MaterialStateProperty.all(const Size(200, 50)),
              ).copyWith(elevation: ButtonStyleButton.allOrNull(0.0)),
              child: const Text(
                "Nova Frase",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
