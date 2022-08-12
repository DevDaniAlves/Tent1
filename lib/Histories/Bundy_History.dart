import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled4/Home%20Page.dart';


class Bundy_history extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Bundy_historyState();
  }
}


class _Bundy_historyState extends State<Bundy_history> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
          backgroundColor: Color(0xFFB71C1C),
          title: Center(
            child: Text(
              "Ted Bundy",
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
            child: Text("         Theodore Robert Bundy, mais conhecido pela alcunha de Ted Bundy foi um notório assassino em série americano que sequestrou, "
                "estuprou e matou várias mulheres jovens na década de 1970 ou antes.",
              style: TextStyle(color: Color(0xFFE0E0E0),
                  fontSize: 16,
                  fontFamily: "Schyler"),),
          ),
        ),
      ),
    );
  }

}