import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled4/Home%20Page.dart';
import 'package:untitled4/Indicacoes/Biblioteca%20do%20Mal.dart';


class Mind extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MindState();
  }
}

class _MindState extends State<Mind> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Color(0xFFB71C1C),
            title: Center(
              child: Text(
                " Mind Hunter Profile",
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
                            child: Image.asset("assets/images/Mindhunter Profile.png",
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
                                  'leva o leitor para dentro do escritório do FBI e das salas de entrevistas com assassinos violentos e mostra passo a passo a forma como Ressler propôs seu modelo de análise e sua catalogação desse tipo de criminoso, o que fundamentou o trabalho de investigação dos agentes que é feito até os dias de hoje.'
                                  'O texto dinâmico e informativo de Ressler e Shachtman apresenta ao leitor a compreensão dos protocolos do FBI, da polícia e da ciência comportamental, além de mostrar a introdução de técnicas inovadoras que surgem para gerar mais pistas para as investigações.'
                              'Como a citação de Nietzsche que Ressler usa de epígrafe, em Mindhunter Profile o leitor também é convidado a olhar para esse abismo, encontrar formas de enfrentar esses monstros e entender como não se tornar um deles.',
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
