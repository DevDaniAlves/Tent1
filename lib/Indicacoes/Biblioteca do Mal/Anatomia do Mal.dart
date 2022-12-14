import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled4/Home%20Page.dart';
import 'package:untitled4/Indicacoes/Biblioteca%20do%20Mal.dart';


class AnatomiadoMal extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AnatomiadoMalState();
  }
}

class _AnatomiadoMalState extends State<AnatomiadoMal> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xFFB71C1C),
          title: Center(
            child: Text(
              "Serial Killers - Anatomia do Mal",
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
                        child: Image.asset("assets/images/Anatomia do Mal.png",
                          width: 167,
                          height: 250,)),
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
                        children: [
                          Text(
                            "         O que faz gente aparentemente normal come??ar a matar e n??o parar mais? "
                                "O que os move ??? e o que pode det??-los? Como explicar a compuls??o por matar e o prazer de causar dor, "
                                "sem qualquer arrependimento? De onde vem tanta f??ria? Seriel killers, Anatomia do Mal ?? o dossi?? definitivo sobre o universo sombrio dos psicopatas mais perversos da hist??ria. "
                                "Escrito por Harold Schechter ??? que pesquisa o tema h?? mais de tr??s d??cadas ???, o livro ?? referencia fundamental "
                                "e todos os que se interessam pelo universo da investiga????o e da criminologia. Pontuado por curiosidades macabras, "
                                "dados cient??ficos e fatos pouco conhecidos sobre a trajet??ria dos principais criminosos em serie dos Estados Unidos, "
                                "a obra abrange desde a cria????o do termo serial killer no inicio do s??culo XX at?? o fasc??nio exercido por matadores seriais na cultura pop. "
                                "Tente entender o que se passa na mente dos assassinos mais temidos e cru??is de todos os tempos. Sem duvida, "
                                "oriundos de uma sociedade que precisa repensar urgentemente como cicatrizar essas feridas abertas. ",
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
