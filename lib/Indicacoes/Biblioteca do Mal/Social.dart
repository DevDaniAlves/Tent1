import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled4/Home%20Page.dart';
import 'package:untitled4/Indicacoes/Biblioteca%20do%20Mal.dart';


class social extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _socialState();
  }
}

class _socialState extends State<social> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Color(0xFFB71C1C),
            title: Center(
              child: Text(
                " Social Killers",
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
                            child: Image.asset("assets/images/Social Killers.png",
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
                                Text('Voc?? realmente conhece todas aquelas pessoas listadas como seus amigos? Se o velho ditado ???quem v?? cara n??o v?? cora????o??? for mesmo verdade, o que se pode dizer sobre todos aqueles avatares sorridentes que voc?? adicionouA realidade, ainda que virtual, pode ser bem mais assustadora que a fic????o. Enquanto um vampiro precisaria ser convidado para entrar, um psicopata on-line n??o vai perder a oportunidade de entrar quando encontra janelas abertas. Cuidado com o que voc?? curte.SOCIAL KILLERS - AMIGOS VIRTUAIS, ASSASSINOS REAIS ?? um livro assustadoramente verdadeiro. Seus autores, RJ Parker e JJ Slate, re??nem alguns dos casos mais angustiantes de criminosos que usaram as redes sociais para se aproximar de suas v??timas. Stalkers, predadores sexuais, assassinos, canibais, torturadores. A lista, infelizmente, n??o ?? pequena. E novas solicita????es de amizade continuam chegando a cada dia.Parker e Slate deixam claro que esse n??o ?? um fen??meno novo. Muito antes da internet, criminosos usavam classificados de jornal para descobrir e atrair suas presas. Mas o anonimato da web permite que cada vez mais lobos usem roupas de cordeiro nas suas fotos de perfil.Mas existe luz no fim do t??nel. Analisando mais de 30 casos famosos, os autores demonstram como as for??as da lei est??o usando, com sucesso, as novas ferramentas de comunica????o para investigar e prender foras da lei e desmantelar quadrilhas. E ainda ensinam dicas de seguran??a. O livro SOCIAL KILLERS - AMIGOS VIRTUAIS, ASSASSINOS REAIS ?? um alerta para todos n??s, que passamos tanto tempo conectados.Com SOCIAL KILLERS - AMIGOS VIRTUAIS, ASSASSINOS REAIS, a DarkSide?? Books amplia sua cole????o Crime Scene??, que j?? conta com os livros Serial Killers ??? Louco ou Cruel? e Serial Killers ??? Made in Brazil, de Ilana Casoy; a premiada biografia Manson, de Jeff Guinn; e o best-seller Serial Killers, Anatomia do Mal, de Harold Schechter. Hist??rias reais, indicadas para quem tem o esp??rito investigador e n??o se assusta facilmente.',
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
