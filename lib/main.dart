import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:training_provider/home_page.dart';
import 'controller/inc_controller.dart';

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
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider(
        child:  const HomePage(),
        create: (_) => IncController(),
      ),
    );
  }
}

