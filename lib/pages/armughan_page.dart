import 'package:flutter/material.dart';
import 'package:introductory_app/utils/routes.dart';

class ArmughanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Introductory App"),
      ),
      drawer: Drawer(
        child: ListView(
          // padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          children: [
            DrawerHeader(
              child: Center(
                child: Text(
                  "Persons",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    fontSize: 30,
                  ),
                  // textScaleFactor: 2.0,
                ),
              ),
            ),
            ElevatedButton(
              child: Text("Muazzam Bahi"),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  MyRoutes.loginRoute,
                );
              },
            ),
            ElevatedButton(
              child: Text("Armughan Bahi"),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  MyRoutes.forumRoute,
                );
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text(
          "Armughan Bahi",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
