import 'package:verses_of_the_day/utility/default.dart';
import 'package:verses_of_the_day/models/verses.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class WebServiceAPI {
  Map<String, dynamic> bodyResponse = {};

  Future<Verses> getVersesRandom() async {
    var url =
        Uri.https(Default.urlBase, Default.version + Default.unencodedPath);

    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      bodyResponse = json.decode(response.body);
    }

    return Verses.fromJson(bodyResponse);
  }
}
