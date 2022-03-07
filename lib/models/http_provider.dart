import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HttpProvider with ChangeNotifier {
  Map<String, dynamic> _data = {};
  Map<String, dynamic> get data => _data;
  int get count => _data.length;

  postData(String name, String job) async {
    Uri urlApi = Uri.parse('https://reqres.in/api/users');

    var res = await http.post(urlApi, body: {
      'name': name,
      'job': job,
    });

    _data = json.decode(res.body);
    notifyListeners();
  }
}
