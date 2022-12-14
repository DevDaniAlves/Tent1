import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled4/Home%20Page.dart';
import 'package:untitled4/Indicacoes/Biblioteca%20do%20Mal.dart';


class ted extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _tedState();
  }
}

class _tedState extends State<ted> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Color(0xFFB71C1C),
            title: Center(
              child: Text(
                " Ted Bundy: Um estranho ao meu lado",
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
                            child: Image.asset("assets/images/Um Estranho ao Meu Lado.png",
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
                                Text('Quando Ann Rule conheceu Ted Bundy em um centro de atendimento de preven????o ao suic??dio, '
                                    'ela n??o fazia ideia de que aquele rapaz simp??tico e inteligente - que sentava ao lado dela e de '
                                    'quem at?? chegou a receber um cart??o de Natal - se tornaria um dos serial killers mais proeminentes'
                                    ' da hist??ria. Ted Bundy confessou ter matado ao menos 36 mulheres nos Estados Unidos durante os anos 1970. '
                                    'Para estudiosos do caso, a contagem final ?? ainda maior. Ele pode at?? ter salvado vidas pelo centro de preven????o, '
                                    'mas ceifou outras dezenas quando ningu??m estava olhando. In??meras fam??lias ficaram sem respostas, e ele foi executado '
                                    'em 1989 na cadeira el??trica. Mas estas informa????es todo mundo conhece. Chegou a hora de saber mais. Ted Bundy: Um Estranho '
                                    'ao Meu Lado ?? o livro de true crime mais aguardado pelos darksiders e chega como um cl??ssico na cole????o Crime Scene??, da DarkSide?? Books. '
                                    'Ann Rule - que teve uma extensa carreira publicando livros e reportagens sobre casos criminais -, divide uma experi??ncia que ningu??m,'
                                    ' em s?? consci??ncia, gostaria de ter: a proximidade com um serial killer e a descoberta de sua verdadeira face. Em Ted Bundy: Um Estranho ao Meu Lado, '
                                    'mergulhamos nas mem??rias de Rule atrav??s de um vi??s inusitado e assustador. Ap??s mudar de emprego e come??ar a cobrir casos criminais, '
                                    'Rule se viu diante de um mist??rio envolvendo mortes consecutivas de mulheres, at?? que, anos depois, quando estava escrevendo um livro sobre essas mesmas v??timas, '
                                    'a verdade veio ?? tona. Rule levou anos para aceitar e assimilar o fato de que o homem que havia causado tanto horror era o mesmo com quem havia'
                                    ' passado sozinha os turnos da noite no trabalho. Em 2003, em uma entrevista ao Houston Chronicle, ela afirmou: "Por muito tempo eu nutri esperan??as de que ele fosse inocente,'
                                    ' de que, de alguma forma, isso tudo n??o passasse de um erro terr??vel". Sua experi??ncia alterou drasticamente seu projeto: ela n??o mais estava escrevendo sobre um assassino misterioso, '
                                    'e sim sobre algu??m que havia conhecido pessoalmente. Equilibrando sua viv??ncia pessoal cheia de descren??as, temores e conflitos e seu papel como rep??rter investigativa,'
                                    ' Rule explora a dualidade de Bundy com uma intimidade ??mpar. De um lado, um homem charmoso e carism??tico que dividia planos sobre reconquistar uma antiga namorada; de outro,'
                                    ' um psicopata que nutria um ??dio fervoroso por mulheres e vivia uma vida de mentira.',
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
