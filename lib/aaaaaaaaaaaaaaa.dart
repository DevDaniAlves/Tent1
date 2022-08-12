import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled4/Home%20Page.dart';
import 'package:untitled4/Indicacoes/Biblioteca%20do%20Mal/BTK_PAI.dart';
import 'package:untitled4/Indicacoes/Biblioteca%20do%20Mal/BTK_Profile.dart';
import 'package:untitled4/Indicacoes/Biblioteca%20do%20Mal/Lady%20Killers.dart';
import 'package:untitled4/Indicacoes/Cinema%20Maligno/Talk%20Ted.dart';
import 'package:untitled4/Indicacoes/Cinema%20Maligno/You.dart';
import 'package:untitled4/Indicacoes/Cinema%20Maligno/cats.dart';


class aa extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _aaState();
  }
}

class _aaState extends State<aa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xFFB71C1C),
          title: Center(
            child: Text(
              "Cinema Maligno",
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
    "assets/images/Ted Bundy Tapes.png",
    'assets/images/You.png',
    'assets/images/Cats.png',
    'assets/images/Matsunaga.png',
  ];
  final _title =  [
    "Conversando com um Serial Killer: Ted Bundy",
    "You",
    "Don't F**k with cats: Uma Caçada Online",
    "Elize Matsunaga - Era Uma Vez um Crime",

  ];
  final _historyPath = [
    Talk_Ted(),
    You(),
    cats(),
    Lady(),
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
                elevation: 0,
                color: Color(0xFF212121),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => historyPath));
                    },
                    title: Column(
                        children: <Widget>[
                          ClipRRect(
                              child: Image.asset(avatar,),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 16.0),
                            child: Text(title, style: TextStyle(color:Color(0xFFE0E0E0)),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 16.0),
                            child: Text(title, style: TextStyle(color:Color(0xFFE0E0E0)),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 16.0),
                            child: Text(title, style: TextStyle(color:Color(0xFFE0E0E0)),),
                          ),
                          Divider(
                            color: Colors.white,
                          )
                        ]

                ),
                ),
              ));

            },

          ),
        ),
        color: Color(0xFF212121),
      );
  }
}
