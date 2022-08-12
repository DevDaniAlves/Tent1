import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResetPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF212121),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () => Navigator.pop(context, false),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(
            top: 100, left: 50, right: 50),
        color: Color(0xFF212121),
        child: ListView(children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(bottom: 32.0),
            child: SizedBox(
              width: 300,
              height: 150,
            ),
          ),
          const SizedBox(
            height: 0,
          ),
          const Text(
            "Esqueceu sua senha ?",
            style: TextStyle(
              fontSize: 24,
              color: Color(0xFFB71C1C),
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Por favor , informe o E-mail associado a sua conta que enviaremos um link para o mesmo com as instruções para restauração de sua senha.",
            style: TextStyle(
              fontSize: 16,
              color: Color(0xFFB71C1C),
              fontWeight: FontWeight.w400,
            ) ,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
                icon: Icon(Icons.email,
                  color: Colors.grey,
                ),
                border: InputBorder.none,
                hintText: "E-mail",
                hintStyle: TextStyle(color: Color(0xFFB71C1C)),
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                )
            ),
            style: const TextStyle(fontSize: 16),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 60,
            alignment: Alignment.centerLeft,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFFB71C1C),
                    Color(0xFFB71C1C),
                  ],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                )
            ),
            child: SizedBox.expand(
              // ignore: deprecated_member_use
              child: FlatButton(
                child: const Text(
                  "Enviar",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF212121),
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
                onPressed: (){},
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],),
      ),
    );
  }
}