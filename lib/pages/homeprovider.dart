import 'package:flutter/material.dart';
import 'package:layouting/models/http_provider.dart';
import 'package:provider/provider.dart';

class HomeProvider extends StatelessWidget {
  const HomeProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dataProvider = Provider.of<HttpProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn Req Using Stateful & Provider',
            style: TextStyle(fontSize: 16)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Consumer<HttpProvider>(
                builder: (context, value, child) => Text(
                  "User ID: ${value.data['id'] ?? 'No Data'}",
                  style: const TextStyle(fontSize: 20),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Center(
              child: Consumer<HttpProvider>(
                builder: (context, value, child) => Text(
                  "Nama User: ${value.data['name'] ?? 'No Data'}",
                  style: const TextStyle(fontSize: 20),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Center(
              child: Consumer<HttpProvider>(
                builder: (context, value, child) => Text(
                  "Pekerjaan: ${value.data['job'] ?? 'No Data'}",
                  style: const TextStyle(fontSize: 20),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Center(
              child: Consumer<HttpProvider>(
                builder: (context, value, child) => Text(
                  "Dibuat Pada: ${value.data['createdAt'] ?? 'No Data'}",
                  style: const TextStyle(fontSize: 20),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  dataProvider.postData("Gblg", "Gblggggg");
                },
                child: const Text(
                  "POST DATA",
                  style: TextStyle(fontSize: 18),
                ))
          ],
        ),
      ),
    );
  }
}
