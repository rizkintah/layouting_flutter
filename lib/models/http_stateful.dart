import 'dart:convert';
import 'package:http/http.dart' as http;

class HttpStateful {
  String? name, id, job, createdAt;

  HttpStateful({this.name, this.id, this.job, this.createdAt});

  static Future<HttpStateful> postData(String name, String job) async {
    Uri urlApi = Uri.parse('https://reqres.in/api/users');

    var res = await http.post(urlApi, body: {
      'name': name,
      'job': job,
    });

    var dataJson = json.decode(res.body);

    return HttpStateful(
      name: dataJson['name'],
      id: dataJson['id'],
      job: dataJson['job'],
      createdAt: dataJson['createdAt'],
    );
  }
}
