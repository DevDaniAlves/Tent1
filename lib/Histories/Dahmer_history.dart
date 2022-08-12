import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled4/Home%20Page.dart';


class Dahmer_history extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Dahmer_historyState();
  }
}


class _Dahmer_historyState extends State<Dahmer_history> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
          backgroundColor: Color(0xFFB71C1C),
          title: Center(
            child: Text(
              "Jeff Dahmer",
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
            child: Text("         Jeffrey Lionel Dahmer foi um serial killer americano. Dahmer assassinou 17 homens e garotos,"
                " entre 1978 e 1991, sendo a maioria dos assassinatos ocorridos entre os anos de 1989 e 1991. Seus crimes eram particularmente hediondos, "
                "envolvendo estupro, necrofilia e canibalismo ",
              style: TextStyle(color: Color(0xFFE0E0E0),
                  fontSize: 16,
                  fontFamily: "Schyler"),),
          ),
        ),
      ),
    );
  }

}