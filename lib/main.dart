import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introductory_app/pages/armughan_page.dart';
import 'package:introductory_app/pages/forum_page.dart';
import 'package:introductory_app/pages/home_page.dart';
import 'package:introductory_app/pages/login_page.dart';
import 'package:introductory_app/pages/muazzam_page.dart';
import 'package:introductory_app/utils/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        // brightness: Brightness.dark,
        // primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      initialRoute: "/home",
      routes: {
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.forumRoute: (context) => ForumPage(),
        MyRoutes.muazzamRoute: (context) => MuazzamPage(),
        MyRoutes.armughanRoute: (context) => ArmughanPage(),
      },
    );
  }
}
