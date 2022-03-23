import 'package:database/three.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'colors.dart';

class Second extends StatefulWidget {
  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {
  TextEditingController loginController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
  }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [HexColor("#FFF9E1C0"),HexColor("#FFF1ECE6")]
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: [
                Text("Login",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
                SizedBox(height: 50,),
                TextFormField(
                  controller: loginController,
                  decoration: InputDecoration(
                      labelText: "Login",
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      )),
                ),
                SizedBox(height: 30,),
                TextFormField(
                  controller: passwordController,
                  decoration: InputDecoration(
                      labelText: "Password",
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      )),
                ),
                SizedBox(height: 30,),
                // ignore: deprecated_member_use
                RaisedButton(
                  child: Text("Kirish"),
                  onPressed:  () async{
                    SharedPreferences prefer = await SharedPreferences.getInstance();
                    var login  = prefer.getString("login");
                    var password = prefer.getString("password");

                    if(loginController.text == login && passwordController.text==password){
                      print('REGISTRATSIYA BAJARILDI!');
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Databases()));
                    }
                    else if(loginController.text != login || passwordController.text != password){
                      ScaffoldMessenger.of(context).
                      showSnackBar(SnackBar(content: Text("Login yoki Parol Xato Kiritdingiz!"),),);
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      );
    }
}






