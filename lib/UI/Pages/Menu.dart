// ignore: file_names
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SingleChildScrollView(
                child: Text(
                  "Selecione una opcion a probar",
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 25),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextButton(
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                          const EdgeInsets.symmetric(horizontal: 80)),
                      backgroundColor: MaterialStateProperty.all(Colors.blue)),
                  onPressed: () {
                    Navigator.pushNamed(context, "lenguaje");
                  },
                  child: const Text(
                    "Lenguaje senas",
                    style: TextStyle(color: Colors.white),
                  )),
              TextButton(
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                          const EdgeInsets.symmetric(horizontal: 100)),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.green[300])),
                  onPressed: () {
                    Navigator.pushNamed(context, "guante");
                  },
                  child: const Text("Guante",
                      style: TextStyle(color: Colors.white)))
            ],
          ),
        ],
      ),
    );
  }
}
