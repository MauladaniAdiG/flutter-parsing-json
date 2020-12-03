import 'dart:convert';
import 'dart:io';

import 'package:app/models/contacs.dart';
import 'package:http/http.dart' as http;

class ServiceApi {
  String baseUrl = 'https://api.androidhive.info/contacts/';

  Future parsingJson() async {
    http.Response response = await http.get(baseUrl);
    if (response.statusCode == HttpStatus.ok) {
      return Contacts.fromMap(json.decode(response.body));
    } else {
      return null;
    }
  }
}
