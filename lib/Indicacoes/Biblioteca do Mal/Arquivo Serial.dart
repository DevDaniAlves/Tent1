import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled4/Home%20Page.dart';
import 'package:untitled4/Indicacoes/Biblioteca%20do%20Mal.dart';


class brasil extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _brasilState();
  }
}

class _brasilState extends State<brasil> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Color(0xFFB71C1C),
            title: Center(
              child: Text(
                " Arquivo Serial Killers: Made in Brazil",
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
                            child: Image.asset("assets/images/Cruel.png",
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
                          child: SingleChildScrollView(
                            child: Column(
                              children: const [
                                Text("Arquivos Serial Killers: Louco ou Cruel e Made in Brazil é o primeiro dos relançamentos comemorativos dos 5 anos da editora Darkside. Os dois livros, Arquivos Serial Killers: Louco ou Cruel? e Arquivos Serial Killers: Made in Brazil, reunidos num único volume de luxo, com mais de 700 páginas de investigação."

                                    "Para escrever Louco ou Cruel?, a escritora mergulhou em arquivos da polícia e da Justiça, do FBI e da Scotland Yard, além de ter feito uma pesquisa rigorosa em diversas outras fontes para compor um inquietante roteiro de como, por que razão e com que métodos os serial killers agem."

                                    "Em Made in Brazil, Casoy dedicou-se a investigar os serial killers brasileiros, no que viria a ser o primeiro livro do gênero dedicado aos assassinos em série do Brasil. Foram cinco anos de pesquisas, visitas a arquivos públicos, manicômios e penitenciárias, além de entrevistas cara a cara com personificações, do mal em terras tupiniquins, para produzir um dossiê sobre o lado mais sombrio do ser humano. Perturbador e por muitas vezes comovente, o relato de Casoy nos apresenta histórias que nem a ficção e o cinema conseguiram imaginar.",

                                  style: TextStyle(color: Color(0xFFE0E0E0),
                                      fontSize: 16,
                                      fontFamily: "Schyler"),),



                              ],
                            ),
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
