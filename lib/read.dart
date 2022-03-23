import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Read extends StatefulWidget {

  @override
  _ReadState createState() => _ReadState();
}

class _ReadState extends State<Read> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Padding(
            padding: const EdgeInsets.all(12),
            child:  ListView(
              children: [
                SizedBox(height: 10,),
                Column(
                  children: [
                    Text("READ",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 30, color: Colors.redAccent,
                          fontWeight: FontWeight.bold),),
                    Divider(color: Colors.black,),
                  ],
                ),
                SizedBox(height: 10,),
                Text(
                  "SELECT * FROM user  WHERE username = and password -> "
                      "When we are building APIs, we want our models to provide"
                      " four basic types of functionality. The model must "
                      "be able to Create, Read, Update, and Delete resources."
                      " Computer scientists often refer to these functions by "
                      "the acronym CRUD. A model should have the "
                      "ability to perform at most these four functions in order to be"
                      " complete. If an action cannot be described by one of these"
                      " four operations, then it should potentially be a model of its own."
                      "The CRUD paradigm is common in constructing web applications,because it"
                      "provides a memorable framework for reminding developers of how to"
                      "construct full, usable models.For example, let’s"
                      "imagine a system to keep track of library books. In this"
                      " hypothetical library database, we can imagine that there would"
                      "be a books resource, which would store book objects.",
                  style: TextStyle(fontSize: 16),),
                SizedBox(height: 20,),
                Image.asset("assets/images/read.png",),
                SizedBox(height: 10,),
                InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.keyboard_backspace_rounded, size: 30))
              ],
            ),

    ),),
    );
  }
}
