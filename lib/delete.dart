import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Delete extends StatelessWidget {

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
                  Text("DELETE",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, color: Colors.tealAccent,
                        fontWeight: FontWeight.bold),),
                  Divider(color: Colors.black,),
                ],
              ),
              Text(
                "DELETE FROM User WHERE id = ?' ->  "
                    "Delete — There should be a function to call "
                    "to remove a library book from the catalog. "
                    "The program calling the function would supply "
                    "one or more values (“title”, “author”, and/or “isbn”)"
                    " to identify the book, and then this book would be removed"
                    " from the books resource. After this function is called,"
                    " the books resource should contain all of the books it had before, "
                    "except for the one just deleted.",
                style: TextStyle(fontSize: 16),),
              Image.asset("assets/images/delete.png",),
              InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.keyboard_backspace_rounded, size: 30)),
            ],
          ),
        ),),
    );
  }
}
