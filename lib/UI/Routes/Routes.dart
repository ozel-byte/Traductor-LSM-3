import 'package:flutter/material.dart';
import 'package:traductor/UI/Pages/Menu.dart';

class Routes extends StatelessWidget {
  const Routes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Traductor-LSM",
      routes: {"/": (_) => const Menu()},
    );
  }
}
