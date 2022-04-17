import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:myapp/pages/income.dart';
import 'package:myapp/pages/expense.dart';
import 'package:myapp/mexpense/jan.dart';
import 'package:myapp/mexpense/feb.dart';
import 'package:myapp/mexpense/mar.dart';
import 'package:myapp/mexpense/apr.dart';
import 'package:myapp/mexpense/ma.dart';
import 'package:myapp/mexpense/jun.dart';
import 'package:myapp/mexpense/jul.dart';
import 'package:myapp/mexpense/aug.dart';
import 'package:myapp/mexpense/sep.dart';
import 'package:myapp/mexpense/oct.dart';
import 'package:myapp/mexpense/nov.dart';
import 'package:myapp/mexpense/dec.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Monthlye extends StatefulWidget {
  @override
  _MonthlyeState createState() => _MonthlyeState();
}

class _MonthlyeState extends State<Monthlye> {
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
        title: Text("Monthly Expense Details"),
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
                      Navigator.push(context,
                          new MaterialPageRoute(builder: (context) => Jan()));
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
                      Navigator.push(context,
                          new MaterialPageRoute(builder: (context) => Feb()));
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
                          new MaterialPageRoute(builder: (context) => Mar()));
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
                          new MaterialPageRoute(builder: (context) => Apr()));
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
                          new MaterialPageRoute(builder: (context) => Ma()));
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
                          new MaterialPageRoute(builder: (context) => Jun()));
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
                          new MaterialPageRoute(builder: (context) => Jul()));
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
                      Navigator.push(context,
                          new MaterialPageRoute(builder: (context) => Aug()));
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
                      Navigator.push(context,
                          new MaterialPageRoute(builder: (context) => Sep()));
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
                      Navigator.push(context,
                          new MaterialPageRoute(builder: (context) => Oct()));
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
                      Navigator.push(context,
                          new MaterialPageRoute(builder: (context) => Nov()));
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
                      Navigator.push(context,
                          new MaterialPageRoute(builder: (context) => Dec()));
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
