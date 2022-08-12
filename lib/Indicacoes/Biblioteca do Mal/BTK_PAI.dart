import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled4/Home%20Page.dart';
import 'package:untitled4/Indicacoes/Biblioteca%20do%20Mal.dart';


class BTK_Pai extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BTK_PaiState();
  }
}

class _BTK_PaiState extends State<BTK_Pai> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Color(0xFFB71C1C),
            title: Center(
              child: Text(
                " BTK: Meu Pai",
                style: const TextStyle(
                    color: Color(0xFF212121),
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
            actions: [
              IconButton(
                  icon: Icon(
                    Icons.login_outlined,
                    color: Color(0xFF212121),
                  ),
                  onPressed:
                      () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BibliotecadoMal()));
                  })

            ],
            leading: Builder(builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(
                  Icons.menu,
                  color: Color(0xFF212121),
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                tooltip: MaterialLocalizations
                    .of(context)
                    .openAppDrawerTooltip,
              );
            })),
        drawer: CustomDrawer(),
        body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  color: Color(0xFF212121),

                  child: Column(
                    children: [
                      Container(
                        color: Color(0xFF212121),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Image.asset("assets/images/BTK Meu Pai.png",
                              width: 259.5,
                              height: 259.5,)),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Color(0xFF212121),
                  child: Column(
                    children: [
                      SizedBox(
                        width: MediaQuery
                            .of(context)
                            .size
                            .width,
                        height: MediaQuery
                            .of(context)
                            .size
                            .height,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 16.0, right: 8, left: 8),
                          child: Column(
                            children: const [
                              Text(
                                "         BTK: Meu Pai, de Kerri Rawson, é o corajoso livro de memórias da mulher que precisa carregar para sempre a alcunha de “a filha do BTK”."
                                    " Nesta obra, a autora encara com bravura o trauma, a desolação e a tristeza de amar de forma profunda e incondicional um homem brutal, sádico e maligno.",
                                style: TextStyle(color: Color(0xFFE0E0E0),
                                    fontSize: 16,
                                    fontFamily: "Schyler"),),



                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                ),

              ],
            )));


  }
}
