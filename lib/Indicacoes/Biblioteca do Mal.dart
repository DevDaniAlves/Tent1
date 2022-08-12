import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled4/Home%20Page.dart';
import 'package:untitled4/Indicacoes/Biblioteca%20do%20Mal/Anatomia%20do%20Mal.dart';
import 'package:untitled4/Indicacoes/Biblioteca%20do%20Mal/Arquivo%20Serial.dart';
import 'package:untitled4/Indicacoes/Biblioteca%20do%20Mal/BTK_PAI.dart';
import 'package:untitled4/Indicacoes/Biblioteca%20do%20Mal/BTK_Profile.dart';
import 'package:untitled4/Indicacoes/Biblioteca%20do%20Mal/Lady%20Killers.dart';
import 'package:untitled4/Indicacoes/Biblioteca%20do%20Mal/Social.dart';
import 'package:untitled4/Indicacoes/Biblioteca%20do%20Mal/mindhunter.dart';
import 'package:untitled4/Indicacoes/Biblioteca%20do%20Mal/ted.dart';


class BibliotecadoMal extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BibliotecadoMalState();
  }
}

class _BibliotecadoMalState extends State<BibliotecadoMal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Color(0xFFB71C1C),
            title: Center(
              child: Text(
                "Indicações",
                style: const TextStyle(
                    color: Color(0xFF212121),
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
            ),
            actions: const [
              IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.settings,
                    color: Color(0xFF212121),
                  ))
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
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            })
        ),
        drawer: CustomDrawer(),
        body: listaTela(),

    );}
}

class listaTela extends StatelessWidget {
  final _avatar = [
    "assets/images/Anatomia do Mal.png",
    'assets/images/BTK Meu Pai.png',
    'assets/images/Evil Mask.png',
    'assets/images/Lady Killers.png',
    'assets/images/Mindhunter Profile.png',
    'assets/images/Um Estranho ao Meu Lado.png',
    'assets/images/Cruel.png',
    'assets/images/Social Killers.png',
  ];
  final _title =  [
    "Anatomia do Mal",
    "BTK: Meu Pai",
    "BTK Profile: Máscara da Maldade",
    "Lady Killers - Assassinas em Série",
    "Mindhunter Profile: Serial Killers",
    "Ted Bundy: Um Estranho ao Meu Lado",
    "Arquivo Serial Killer: Made in Brazil é Louco ou Cruel?",
    "Social Killers",

  ];
  final _historyPath = [
    AnatomiadoMal(),
    BTK_Pai(),
    BTK_Profile(),
    Lady(),
    Mind(),
    ted(),
    brasil(),
    social(),
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return
      Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 16),
          child: ListView.builder(
            itemCount: _avatar.length,
            itemBuilder: (BuildContext context, int index) {
              final avatar = _avatar[index];
              final title = _title[index];
              final historyPath = _historyPath[index];

              return Card(
                elevation: 4,
                color: Color(0xFF242424),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => historyPath));
                    },
                    leading: CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage(avatar),
                    ),
                    title: Text(title, style: TextStyle(color:Color(0xFFE0E0E0)),),
                  ),
                ),
              );

            },

          ),
        ),
        color: Color(0xFF212121),
      );
  }
}
