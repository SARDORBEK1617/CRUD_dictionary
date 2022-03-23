import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'second.dart';
import 'colors.dart';

class First extends StatefulWidget {
  @override
  _FirstState createState() => _FirstState();
}

class _FirstState extends State<First> {
  TextEditingController nameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController loginController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void initState() {
    checkLogin();
    super.initState();
  }

  void checkLogin() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    if (pref.getString("login")!.isEmpty) {
      
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [HexColor('#FFFBC4CE'), HexColor(('#FF95D5FC'))],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Registration",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                  labelText: "Name",
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              TextFormField(
                controller: lastnameController,
                decoration: InputDecoration(
                  labelText: "LastName",
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              TextFormField(
                controller: loginController,
                decoration: InputDecoration(
                  labelText: "Login",
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              TextFormField(
                controller: passwordController,
                decoration: InputDecoration(
                  labelText: "Password",
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(height: 30,),
              // ignore: deprecated_member_use
              RaisedButton(
                onPressed: () {
                  tex();
                },
                child: Text("Save"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void tex() async {
    if (nameController.text.isEmpty &&
        lastnameController.text.isEmpty &&
        loginController.text.isEmpty &&
        passwordController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Bo'limlarni to'ldiring"),
        ),
      );
    } else {
      SharedPreferences key = await SharedPreferences.getInstance();
      key.setString("name", nameController.text);
      key.setString("lastname", lastnameController.text);
      key.setString("login", loginController.text);
      key.setString("password", passwordController.text);
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Second()));
    }
  }
}
