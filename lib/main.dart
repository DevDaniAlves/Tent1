
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'LoginPage.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor: Color(0xFF212121), // navigation bar color
    statusBarColor: Color(0xFF212121), //
    statusBarBrightness: Brightness.light,
    statusBarIconBrightness: Brightness.light,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: Theme.of(context).appBarTheme.copyWith(brightness:Brightness.light ),
          primaryColor: Color(0xFF212121),
          primarySwatch: Colors.red,
        ),

        home: LoginPage()
    );
  }
}
