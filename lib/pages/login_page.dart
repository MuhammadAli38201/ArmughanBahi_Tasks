import 'package:flutter/material.dart';
import 'package:introductory_app/utils/routes.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
        body: Column(
          children: [
            Image.asset(
              "assets/images/login_image.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Welcome",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 16,
                horizontal: 32,
              ),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Username",
                      hintText: "Enter username",
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "Enter password",
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    child: Text("Login"),
                    style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        MyRoutes.muazzamRoute,
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
