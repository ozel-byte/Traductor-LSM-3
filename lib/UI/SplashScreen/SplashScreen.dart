import 'dart:async';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold();
  }
}//actions: [TextButton(onPressed: (){
//Navigator.pushNamed(context, "Siguiente");
//},
//child: Icon(Icons.arrow_forward,
//color: Colors.black)),],
