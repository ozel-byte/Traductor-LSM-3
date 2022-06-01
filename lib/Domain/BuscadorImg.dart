import 'dart:async';

import 'package:flutter/material.dart';

class BuscadorImg {
  List<Widget> listImage = [];
  StreamController<List<Widget>> streamController =
      StreamController.broadcast();

  void anadirImgList(widget) {
    listImage.add(widget);

    streamController.sink.add(listImage);
  }

  void limpiarLista() {
    listImage.clear();
    streamController.sink.add(listImage);
  }

  final Map<String, String> letrasComilla = {
    "á": "a",
    "é": "e",
    "Í": "i",
    "ó": "o",
    "ú": "u"
  };
  set buscarLetraImg(String palabra) {
    for (int i = 0; i < palabra.length; i++) {
      String letra = palabra.substring(i, i + 1);
      if (letra != " ") {
        if (letrasComilla.containsKey(letra)) {
          String valor = letrasComilla[letra]!;
          Image image = Image(image: AssetImage("assets/" + valor));
          anadirImgList(image);
        } else {
          final image = Image(
              image: AssetImage("assets/" +
                  palabra.substring(i, i + 1).toUpperCase() +
                  ".jpeg"));
          anadirImgList(image);
        }
      } else {
        anadirImgList(const SizedBox(
          width: 30,
          height: 30,
        ));
      }
    }
  }
}
