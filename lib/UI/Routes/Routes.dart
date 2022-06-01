import 'package:flutter/material.dart';
import 'package:traductor/UI/Pages/BluetoothPage.dart';
import 'package:traductor/UI/Pages/Menu.dart';
import 'package:traductor/UI/Pages/ViewImageWords.dart';
import 'package:traductor/UI/SplashScreen/SplashScreen.dart';

class Routes extends StatelessWidget {
  const Routes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Traductor-LSM",
      routes: {
        "/": (_) => const SplashScreen(),
        "Menu": (_) => const Menu(),
        "ViewImageWords": (_) => ViewImageWords(),
        "BluetoothPage": (_) => BluetoothPage()
      },
    );
  }
}
