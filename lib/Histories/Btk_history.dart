import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled4/Home%20Page.dart';


class btk_history extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _btk_historyState();
  }
}


class _btk_historyState extends State<btk_history> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xFFB71C1C),
          title: Center(
            child: Text(
              "BTK",
              style: const TextStyle(
                  color: Color(0xFF212121),
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
            ),
          ),
          actions:[
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
                        builder: (context) => TelaPosLogin()));
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
      body: Container(
        color: Color(0xFF212121),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height ,
          child: Padding(
            padding: const EdgeInsets.only(top: 16.0, right: 8, left: 8),
            child: Text("         Dennis Lynn Rader é um assassino em série americano conhecido como BTK ou Estrangulador BTK.  "
      "Entre 1974 e 1991, Rader matou cerca de dez pessoas nas cidades de Wichita e Park City, no estado do Kansas,  "
      "e enviou cartas provocadoras à polícia e jornais locais descrevendo os detalhes de seus crimes. By: Gustavo Portela Siebiger",
            style: TextStyle(color: Color(0xFFE0E0E0),
            fontSize: 16,
            fontFamily: "Schyler"),),
          ),
        ),
      ),
      drawer: CustomDrawer(),
    );
  }

}