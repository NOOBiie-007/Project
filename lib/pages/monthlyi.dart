import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:myapp/pages/income.dart';
import 'package:myapp/pages/expense.dart';
import 'package:myapp/mincome/january.dart';
import 'package:myapp/mincome/february.dart';
import 'package:myapp/mincome/march.dart';
import 'package:myapp/mincome/april.dart';
import 'package:myapp/mincome/may.dart';
import 'package:myapp/mincome/june.dart';
import 'package:myapp/mincome/july.dart';
import 'package:myapp/mincome/august.dart';
import 'package:myapp/mincome/september.dart';
import 'package:myapp/mincome/october.dart';
import 'package:myapp/mincome/november.dart';
import 'package:myapp/mincome/december.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

class Monthlyi extends StatefulWidget {
  @override
  _MonthlyiState createState() => _MonthlyiState();
}

class _MonthlyiState extends State<Monthlyi> {
  /* Future totalmoney() async {
    var total = 0;
    QuerySnapshot snapshot =
        await Firestore.instance.collection("january").getDocuments();
    if (snapshot == null) {
      return;
    }
    snapshot.documents.forEach((doc) {
      total = total + doc.data['income'];
    });
  }*/

  @override
  Widget build(BuildContext context) {
    final stadiumborder = StadiumBorder(side: BorderSide(color: Colors.purple));
    return Scaffold(
      appBar: AppBar(
        title: Text("Monthly Income Details"),
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),
      body: Container(
        child: Padding(
            padding: EdgeInsets.only(left: 105, top: 10),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RaisedButton(
                    color: Colors.purple[100],
                    shape: stadiumborder,
                    onPressed: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => January()));
                    },
                    child: Text(
                      "   January  ",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                  RaisedButton(
                    color: Colors.purple[100],
                    shape: stadiumborder,
                    onPressed: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => February()));
                    },
                    child: Text(
                      "  February  ",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                  RaisedButton(
                    color: Colors.purple[100],
                    shape: stadiumborder,
                    onPressed: () {
                      Navigator.push(context,
                          new MaterialPageRoute(builder: (context) => March()));
                    },
                    child: Text(
                      "    March    ",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                  RaisedButton(
                    color: Colors.purple[100],
                    shape: stadiumborder,
                    onPressed: () {
                      Navigator.push(context,
                          new MaterialPageRoute(builder: (context) => April()));
                    },
                    child: Text(
                      "      April     ",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                  RaisedButton(
                    color: Colors.purple[100],
                    shape: stadiumborder,
                    onPressed: () {
                      Navigator.push(context,
                          new MaterialPageRoute(builder: (context) => May()));
                    },
                    child: Text(
                      "      May      ",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                  RaisedButton(
                    color: Colors.purple[100],
                    shape: stadiumborder,
                    onPressed: () {
                      Navigator.push(context,
                          new MaterialPageRoute(builder: (context) => June()));
                    },
                    child: Text(
                      "     June      ",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                  RaisedButton(
                    color: Colors.purple[100],
                    shape: stadiumborder,
                    onPressed: () {
                      Navigator.push(context,
                          new MaterialPageRoute(builder: (context) => July()));
                    },
                    child: Text(
                      "      July      ",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                  RaisedButton(
                    color: Colors.purple[100],
                    shape: stadiumborder,
                    onPressed: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => August()));
                    },
                    child: Text(
                      "    August   ",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                  RaisedButton(
                    color: Colors.purple[100],
                    shape: stadiumborder,
                    onPressed: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => September()));
                    },
                    child: Text(
                      "September",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                  RaisedButton(
                    color: Colors.purple[100],
                    shape: stadiumborder,
                    onPressed: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => October()));
                    },
                    child: Text(
                      "   October  ",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                  RaisedButton(
                    color: Colors.purple[100],
                    shape: stadiumborder,
                    onPressed: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => November()));
                    },
                    child: Text(
                      " November",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                  RaisedButton(
                    color: Colors.purple[100],
                    shape: stadiumborder,
                    onPressed: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => December()));
                    },
                    child: Text(
                      "December ",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                ],
              ),
            ) //scroll
            ),
      ),
    );
  }
}
