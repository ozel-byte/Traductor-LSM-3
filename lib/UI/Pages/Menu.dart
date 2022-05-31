// ignore: file_names
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Traductor-LSM"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [Text("Hola"), Text("Mundo")],
      ),
    );
  }
}
