import 'package:flutter/material.dart';
import 'package:introductory_app/utils/routes.dart';

class ForumPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              "Introductory App",
            ),
          ),
          drawer: Drawer(
            child: ListView(
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
              // SizedBox(
              //   height: 10,
              // ),
              Image.asset(
                "assets/images/form_image.png",
                fit: BoxFit.cover,
              ),
              // SizedBox(
              //   height: 20,
              // ),
              // SizedBox(
              //   height: 10,
              // ),
              Text(
                "Registration Form",
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // SizedBox(
              //   height: 10,
              // ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 10,
                ),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "First name",
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Last name",
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Email",
                      ),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Password",
                      ),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Conform Password",
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      child: Text("Login"),
                      style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          MyRoutes.armughanRoute,
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
          backgroundColor: Colors.white),
    );
  }
}
