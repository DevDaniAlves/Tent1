import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled4/Home%20Page.dart';


class Manson_history extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Manson_historyState();
  }
}


class _Manson_historyState extends State<Manson_history> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
          backgroundColor: Color(0xFFB71C1C),
          title: Center(
            child: Text(
              "Charles Manson",
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
            child: Text("         Charles Milles Manson, nascido Charles Milles Maddox foi um criminoso estadunidense. "
                "Em meados de 1967, ele formou e liderou o que ficou conhecido como Família Manson, "
                "uma seita que atuava na Califórnia. Seus seguidores cometeram uma série de nove assassinatos "
                "em quatro locais em julho e agosto de 1969.",
              style: TextStyle(color: Color(0xFFE0E0E0),
                  fontSize: 16,
                  fontFamily: "Schyler"),),
          ),
        ),
      ),
    );
  }

}