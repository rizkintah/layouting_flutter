import 'package:flutter/material.dart';
import 'package:layouting/models/http_stateful.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HttpStateful dataState = HttpStateful();

  @override
  Widget build(BuildContext context) {
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
              child: Text(
                "User ID: ${dataState.id ?? 'No Data'}",
                style: const TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Center(
              child: Text(
                'Nama User: ${dataState.name ?? 'No Data'}',
                style: const TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Center(
              child: Text(
                'Pekerjaan: ${dataState.job ?? 'No Data'}',
                style: const TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Center(
              child: Text(
                'Dibuat pada: ${dataState.createdAt ?? 'No Data'}',
                style: const TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  HttpStateful.postData('Tata', "Programmer").then((value) {
                    setState(() {
                      dataState = value;
                    });
                  });
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
