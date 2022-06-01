import 'package:flutter/material.dart';
import 'package:traductor/Domain/BuscadorImg.dart';

class ViewImageWords extends StatefulWidget {
  ViewImageWords({Key? key}) : super(key: key);

  @override
  State<ViewImageWords> createState() => _ViewImageWordsState();
}

class _ViewImageWordsState extends State<ViewImageWords> {
  final TextEditingController _controllertext = TextEditingController();
  int valid = 1;
  BuscadorImg bi = BuscadorImg();

  @override
  void initState() {
    super.initState();
    _controllertext.addListener(() {
      if (_controllertext.text == "") {
        bi.limpiarLista();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              )),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0.3,
          title: const Text(
            "Lenguaje señas",
            style: TextStyle(
                fontWeight: FontWeight.w300, fontSize: 30, color: Colors.black),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: size.width * 1,
                height: size.height * 0.1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: TextField(
                    controller: _controllertext,
                    onChanged: (String v) {
                      bi.limpiarLista();
                      if (v != " ") {
                        bi.buscarLetraImg = v;
                      } else {
                        bi.anadirImgList(const SizedBox(
                          width: 30,
                          height: 10,
                        ));
                      }
                    },
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey.withOpacity(1))),
                        hintText: 'ingrese el texto'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                    width: size.width * 1,
                    height: size.height * 0.4,
                    decoration: BoxDecoration(
                      color: const Color(0xffffffff),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(0, 3))
                      ],
                    ),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          StreamBuilder<List<Widget>>(
                            stream: bi.streamController.stream,
                            initialData: [],
                            builder: (_, stream) {
                              return Row(
                                children: stream.data!,
                              );
                            },
                          )
                        ],
                      ),
                    )),
              )
            ],
          ),
        ));
  }
}
