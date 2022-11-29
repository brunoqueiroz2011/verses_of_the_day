import 'package:flutter/material.dart';
import 'package:verses_of_the_day/models/verses.dart';
import 'package:verses_of_the_day/utility/web_service.dart';

class HomePage extends StatefulWidget {
  const HomePage() : super();

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late var _randomVerse = "Clique Abaixo para gerar um versiculo!";
  var _reference = "";
  final loading = ValueNotifier<bool>(false);

  void generateVerse() async {
    loading.value = true;
    var ws = WebServiceAPI();
    Verses verse = await ws.getVersesRandom();
    setState(() {
      _randomVerse = verse.text.toString();
      _reference =
          '${verse.book?.name} ${verse.chapter}:${verse.number}\n${verse.book?.version?.toUpperCase()}';
      loading.value = false;
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
                fontSize: 18.0,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              _reference,
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
            ElevatedButton(
              onPressed: !loading.value ? generateVerse : null,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                minimumSize: MaterialStateProperty.all(const Size(200, 50)),
              ).copyWith(elevation: ButtonStyleButton.allOrNull(0.0)),
              child: AnimatedBuilder(
                  animation: loading,
                  builder: (context, child) => loading.value
                      ? const SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(color: Colors.white),
                        )
                      : const Text(
                          "Novo Versiculo",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        )),
            ),
          ],
        ),
      ),
    );
  }
}
