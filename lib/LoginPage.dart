import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Home Page.dart';
import 'ResetPasswordPage.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isHiddenPassword = true;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Color(0xFF212121),
            systemNavigationBarColor: Color(0xFF212121)),
        backgroundColor: Color(0xFF212121),
        bottomOpacity: 0,
        elevation: 0,
      ),
      backgroundColor: Color(0xFF212121),
      body: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          child: Stack(children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 96),
              child: Column(
                children: <Widget> [
                  Image.asset(
                    "assets/images/badmindslogo.png",
                  ),
                ],
              ),
            ),
            Positioned(
              top: 200,
              child: Container(
                  padding: EdgeInsets.all(32),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: const BoxDecoration(
                    color: Color(0xFF212121),
                  ),
                  child: Column(children: <Widget>[
                    TextField(
                        decoration: InputDecoration(
                            hintText: 'Usuário',
                            prefixIcon: Icon(
                              Icons.person,
                              color: Color(0xFFB71C1C),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                gapPadding: 10,
                                borderSide: const BorderSide(
                                  color: Color(0xFFB71C1C),
                                  width: 2,
                                )),
                            hintStyle: const TextStyle(
                              color: Color(0xFFB71C1C),
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                gapPadding: 10,
                                borderSide: const BorderSide(
                                  color: Color(0xFFB71C1C),
                                  width: 2,
                                )))),
                    Padding(
                      padding: const EdgeInsets.only(top: 16, bottom: 62),
                      child: TextField(
                        obscureText: isHiddenPassword,
                        decoration: InputDecoration(
                            hintText: 'Senha',
                            prefixIcon: Icon(
                              Icons.security,
                              color: Color(0xFFB71C1C),
                            ),
                            suffixIcon: InkWell(
                              onTap: _mostrasenha,
                              child: const Icon(
                                Icons.visibility,
                                color: Color(0xFFB71C1C),
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                gapPadding: 10,
                                borderSide: const BorderSide(
                                  color: Color(0xFFB71C1C),
                                  width: 2,
                                )),
                            hintStyle: const TextStyle(
                              color: Color(0xFFB71C1C),
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                gapPadding: 10,
                                borderSide: const BorderSide(
                                  color: Color(0xFFB71C1C),
                                  width: 2,
                                ))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width / 1.2,
                        decoration: const BoxDecoration(
                            gradient: LinearGradient(colors: [
                              Color(0xFFB71C1C),
                              Color(0xFFB71C1C),
                            ]),
                            borderRadius: BorderRadius.all(
                              Radius.circular(50),
                            )),
                        child: SizedBox.expand(
                          child: TextButton(
                              child: Center(
                                child: Text(
                                  'Login'.toUpperCase(),
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => TelaPosLogin()));
                              }),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width / 1.2,
                        decoration: const BoxDecoration(
                            gradient: LinearGradient(colors: [
                              Color(0xFFB71C1C),
                              Color(0xFFB71C1C)]),
                            borderRadius: BorderRadius.all(
                              Radius.circular(50),
                            )),
                        child: SizedBox.expand(
                          child: TextButton(
                              child: Center(
                                child: Text(
                                  'CRIAR CONTA'.toUpperCase(),
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ),
                              onPressed: null),
                        ),
                      ),
                    ),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                            padding: const EdgeInsets.only(top: 16, right: 32),
                            child: TextButton(
                                child: const Text('Esqueceu sua Senha ?',
                                    style: TextStyle(color: Color(0xFFB71C1C))),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ResetPasswordPage()));
                                })))
                  ])),
            ),
          ])),
    ));
  }

  void _mostrasenha() {
    if (isHiddenPassword == true) {
      isHiddenPassword = false;
    } else {
      isHiddenPassword = true;
    }
    setState(() {});
  }
}
