import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled4/Histories/Btk_history.dart';
import 'package:untitled4/Histories/Bundy_History.dart';
import 'package:untitled4/Histories/Dahmer_history.dart';
import 'package:untitled4/Histories/Manson_history.dart';
import 'package:untitled4/Indicacoes/Biblioteca%20do%20Mal.dart';
import 'package:untitled4/Indicacoes/Cinema%20Maligno.dart';
import 'LoginPage.dart';

class TelaPosLogin extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TelaPosLoginState();
  }
}

class _TelaPosLoginState extends State<TelaPosLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Color(0xFFB71C1C),
            title: Center(
              child: Text(
                "Histórias em Destaque",
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
            })),
        drawer: CustomDrawer(),
        body: listaTela(),
        bottomNavigationBar: MenuInferior());
  }
}

class listaTela extends StatelessWidget {
  final _avatar = [
    "assets/images/BTK.png",
    'assets/images/Charles.png',
    'assets/images/Jeff.png',
    'assets/images/Ted.png'
  ];
  final _title =  [
    "BTK",
    "Charles Manson",
    "Jeff Dahmer",
    "Ted Bundy"
  ];
  final _sinopse = [
    "Dennis Lynn Rader é um assassino em série americano conhecido como BTK ou Estrangulador BTK...",
    "Charles Milles Manson, nascido Charles Milles Maddox foi um criminoso estadunidense...",
    "Jeffrey Lionel Dahmer foi um serial killer americano. Dahmer assassinou 17 homens e garotos, entre 1978 e 1991...",
    "Theodore Robert Bundy, mais conhecido pela alcunha de Ted Bundy...",
  ];
  final _historyPath = [
    btk_history(),
    Manson_history(),
    Dahmer_history(),
    Bundy_history(),

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
                final sinopse = _sinopse[index];
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
                      subtitle: Text(sinopse, style: TextStyle(color:Color(0xFFE0E0E0)) ,),
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

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.horizontal(right: Radius.circular(20)),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.6,
        child: Drawer(
          backgroundColor: Color(0xFF212121),
          child: Column(
            children: <Widget>[
              UserAccountsDrawerHeader(
                  currentAccountPicture: const CircleAvatar(
                    radius: 40.0,
                    backgroundColor: Color(0xFF212121),
                  ),
                  accountName: Text(
                    "Bem Vindo Usuario",
                    style: TextStyle(
                        fontWeight: FontWeight.w700, color: Color(0xFF212121)),
                  ),
                  decoration: BoxDecoration(color: Color(0xFFB71C1C)),
                  accountEmail: Text(
                    "E-mail",
                    style: TextStyle(
                        fontWeight: FontWeight.w700, color: Color(0xFF212121)),
                  )),
              ListTile(
                  title: Text(
                    "Biblioteca do Mal",
                    style: TextStyle(
                        fontWeight: FontWeight.w700, color: Color(0xFFB71C1C)),
                  ),
                  subtitle: Text(
                    "Livros Recomendados",
                    style: TextStyle(color: Color(0xFFB71C1C)),
                  ),
                  leading: Icon(
                    Icons.book_rounded,
                    color: Color(0xFFB71C1C),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => BibliotecadoMal()));
                  }),
              ListTile(
                  title: Text(
                    "Cinema Maligno",
                    style: TextStyle(
                        fontWeight: FontWeight.w700, color: Color(0xFFB71C1C)),
                  ),
                  subtitle: Text(
                    "Filmes, Series e Documentários",
                    style: TextStyle(color: Color(0xFFB71C1C)),
                  ),
                  leading: Icon(
                    Icons.movie,
                    color: Color(0xFFB71C1C),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CinemaMaligno()));
                  }),
              ListTile(
                  title: Text(
                    "Favoritos",
                    style: TextStyle(
                        fontWeight: FontWeight.w700, color: Color(0xFFB71C1C)),
                  ),
                  subtitle: Text(
                    "Minhas Histórias Favoritas",
                    style: TextStyle(color: Color(0xFFB71C1C)),
                  ),
                  leading: Icon(
                    Icons.favorite,
                    color: Color(0xFFB71C1C),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CinemaMaligno()));
                  }),
              ListTile(
                  title: Text(
                    "Minha Lista",
                    style: TextStyle(
                        fontWeight: FontWeight.w700, color: Color(0xFFB71C1C)),
                  ),
                  subtitle:Text(
                    "Para ler mais tarde",
                    style: TextStyle(color: Color(0xFFB71C1C)),
                  ),
                  leading: Icon(
                    Icons.my_library_books,
                    color: Color(0xFFB71C1C),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CinemaMaligno()));
                  }),
              ListTile(
                  title: Text(
                    "Sair",
                    style: TextStyle(
                        fontWeight: FontWeight.w700, color: Color(0xFFB71C1C)),
                  ),
                  subtitle: Text(
                    "Fazer Logout",
                    style: TextStyle(color: Color(0xFFB71C1C)),
                  ),
                  leading: Icon(
                    Icons.logout,
                    color: Color(0xFFB71C1C),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

class MenuInferior extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BottomNavigationBar(
      unselectedLabelStyle: const TextStyle(color: Colors.white),
      unselectedItemColor: Colors.white,
      selectedLabelStyle: const TextStyle(color: Colors.white),
      items: const [
        BottomNavigationBarItem(
            icon: IconButton(onPressed: null, icon: Icon(Icons.bookmark_add, color: Color(0xFF212121)),),
            title: Text(
              "Nova História",
              style: TextStyle(color: Color(0xFF212121)),
            ),
            backgroundColor: Color(0xFF212121)),
        BottomNavigationBarItem(
            title: Text(
              "Home",
              style: TextStyle(color: Color(0xFF212121)),
            ),
            icon: IconButton(onPressed: null, icon: Icon(
              Icons.home,
              color: Color(0xFF212121),
            ),),
            backgroundColor: Color(0xFF212121)),
        BottomNavigationBarItem(
            title: Text(
              "Favoritos",
              style: TextStyle(color: Color(0xFF212121)),
            ),
            icon: IconButton(onPressed: null, icon: Icon(
              Icons.star,
              color: Color(0xFF212121),
            ),),
            backgroundColor: Color(0xFF212121)),
      ],
      backgroundColor: Color(0xFFB71C1C),
    );
  }
}

