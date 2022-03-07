import 'package:flutter/material.dart';
import 'package:layouting/models/http_provider.dart';
import 'package:layouting/pages/homeprovider.dart';
// import 'package:layouting/pages/homepage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home stateful
      // home: const HomePage(),
      // home provider
      home: ChangeNotifierProvider(
          create: ((context) => HttpProvider()), child: const HomeProvider()),
    );
  }
}
