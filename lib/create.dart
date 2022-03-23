import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Create extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text("CREATE",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, color: Colors.green,
                        fontWeight: FontWeight.bold),),
                  Divider(color: Colors.black,),
                ],
              ),
              Text(
                "Create — This would consist of a function"
                " which we would call when a new library book is "
                    "being added to the catalog. The program calling "
                    "the function would supply the values for “title”, "
                    "“author”, and “isbn”. After this function is called, "
                    "there should be a new entry in the books resource corresponding "
                    "to this new book. Additionally, the new entry is assigned a unique id,"
                    "which can be used to access this resource later",
          style: TextStyle(fontSize: 16),),
              Image.asset("assets/images/create.png",),
              InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.keyboard_backspace_rounded, size: 34))
            ],
          ),
        ),),
    );
  }
}
