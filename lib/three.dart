import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'create.dart';
import 'delete.dart';
import 'read.dart';
import 'update.dart';
import 'colors.dart';

class Databases extends StatefulWidget {
  @override
  _DatabasesState createState() => _DatabasesState();
}

class _DatabasesState extends State<Databases> {
  void onStart() {
    super.initState();
    build(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [HexColor("#FFF9E1C0"), HexColor("#FFF1ECE6")]),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Database",
                    style: TextStyle(fontSize: 30, color: Colors.teal),
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                ],
              ),
              Text(
                "CRUD",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Connected DB",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Image(
                    image: AssetImage(
                      "assets/images/connectdb.png",
                    ),
                  ),
                ],
              ),
              InkWell(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Create())),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Text("C-   ",
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 30,
                                fontWeight: FontWeight.bold)),
                        Text("Creat  ->",
                            style: TextStyle(color: Colors.black, fontSize: 20)),
                      ],
                    ),
                    Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),
                            color: Colors.blue
                        ),
                        child: Icon(Icons.create_new_folder_outlined,color: Colors.white,)),
                  ],
                ),
              ),
              InkWell(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Read())),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Text("R-   ",
                            style: TextStyle(
                                color: Colors.pink,
                                fontSize: 30,
                                fontWeight: FontWeight.bold)),
                        Text("Read  ->",
                            style: TextStyle(color: Colors.black, fontSize: 20)),
                      ],
                    ),
                    Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),
                            color: Colors.blue
                        ),child: Icon(Icons.menu_book_outlined,color: Colors.white,)),
                  ],
                ),
              ),
              InkWell(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Update())),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Text("U-   ",
                            style: TextStyle(
                                color: Colors.deepPurple,
                                fontSize: 30,
                                fontWeight: FontWeight.bold)),
                        Text("Update  ->",
                            style: TextStyle(color: Colors.black, fontSize: 20)),
                      ],
                    ),
                    Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),
                            color: Colors.blue
                        ),
                        child: Icon(Icons.update,color: Colors.white,)),
                  ],
                ),
              ),
              InkWell(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Delete())),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Text("D-   ",
                            style: TextStyle(
                                color: Colors.tealAccent,
                                fontSize: 30,
                                fontWeight: FontWeight.bold)),
                        Text("Delete  ->",
                            style: TextStyle(color: Colors.black, fontSize: 20)),
                        // Bu yerda Rich textga misol qoldirganman. Richtext textlarni tagmatag chiqaradi!
                        // RichText(
                        //   text: TextSpan(
                        //     children: [
                        //       TextSpan(text: "D- ",style: TextStyle(
                        //           color: Colors.tealAccent,fontSize: 30,fontWeight: FontWeight.bold)),
                        //       TextSpan(
                        //           text:
                        //               "Delete",
                        //           style: TextStyle(color: Colors.black,fontSize: 20)),
                        //     ],
                        //   ),
                        // ),     //    b
                      ],
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),
                        color: Colors.blue
                      ),
                      child: Icon(Icons.delete_outline_outlined,color: Colors.white,),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
