import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Update extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: 10,),
              Column(
                children: [
                  Text("UPDATE",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, color: Colors.deepPurple,
                        fontWeight: FontWeight.bold),),
                  Divider(color: Colors.black,),
                ],
              ),
              Text(
                "Update — There should be a function to call when "
                    "information about a book must be changed. "
                    "The program calling the function would supply "
                    "the new values for “title”, “author”, and “isbn”. "
                    "After the function call, the corresponding entry in the books "
                    "resource would contain the new fields supplied.",
                style: TextStyle(fontSize: 16),),
              Image.asset("assets/images/update.png",),
              InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.keyboard_backspace_rounded, size: 30)),
    ],
        ),),
      ),
    );
  }
}
