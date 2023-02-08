
import 'package:flutter/material.dart';
import 'package:untitled8/pages/homepage.dart';
import 'package:untitled8/pages/loginpage.dart';
import 'package:untitled8/utils/routes.dart';
import 'package:untitled8/widget/theme.dart';

void main() {
  runApp(MyApp());
}

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       themeMode: ThemeMode.light,
//       theme: ThemeData(
//         primarySwatch: Colors.deepPurple,
//       ),
//       darkTheme: ThemeData(
//         // brightness: Brightness.dark,
//         primarySwatch: Colors.red,
//       ),
//
//
//       routes: {
//         "/" : (context)=> LoginPage(),
//         "/login" : (context)=> LoginPage(),
//         "/home" : (context)=> LoginPage(),
//
//       },
//
//     );
//   }
// }
class MyApp extends StatelessWidget {
  const MyApp({ Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage()
      },
    );
  }
}