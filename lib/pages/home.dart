import 'package:flutter/material.dart';
import 'package:myapp/pages/income.dart';
import 'package:myapp/pages/expense.dart';
import 'package:myapp/pages/yearly.dart';
import 'package:myapp/pages/monthlyi.dart';
import 'package:myapp/pages/monthlye.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Homepage extends StatefulWidget {
  int icount, ecount;
  Homepage(this.icount, this.ecount);
  @override
  _HomepageState createState() => _HomepageState(icount, ecount);
}

class _HomepageState extends State<Homepage> {
  int icount;
  int ecount;
  _HomepageState(this.icount, this.ecount);

  @override
  Widget build(BuildContext context) {
    final stadiumborder = StadiumBorder(side: BorderSide(color: Colors.purple));
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Padding(
          padding: EdgeInsets.only(left: 95, top: 90),
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
                          builder: (context) => Income(icount, ecount)));
                },
                child: Text(
                  "Deposite Balance",
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
                          builder: (context) => Expense(icount, ecount)));
                },
                child: Text(
                  "    Add  Expense   ",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
              RaisedButton(
                color: Colors.purple[100],
                shape: stadiumborder,
                onPressed: () {
                  setState(() {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => Monthlyi()));
                  });
                },
                child: Text(
                  " Monthly Income ",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
              RaisedButton(
                color: Colors.purple[100],
                shape: stadiumborder,
                onPressed: () {
                  setState(() {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => Monthlye()));
                  });
                },
                child: Text(
                  "Monthly Expense",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
              RaisedButton(
                color: Colors.purple[100],
                shape: stadiumborder,
                onPressed: () {
                  setState(() {
                    Navigator.push(context,
                        new MaterialPageRoute(builder: (context) => Yearly()));
                  });
                },
                child: Text(
                  "     Yearly View     ",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title:
            Text('Daily Expense Menu', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      bottomNavigationBar: Container(
          color: Colors.grey[300],
          child: Row(
            children: <Widget>[
              Expanded(
                child: ListTile(
                  title: Text('Balance',
                      style: TextStyle(fontSize: 22, color: Colors.black)),
                  subtitle: Text("${icount}",
                      style: TextStyle(color: Colors.green, fontSize: 22)),
                ),
              ),
              Expanded(
                child: ListTile(
                  title: Text('Expense',
                      style: TextStyle(fontSize: 22, color: Colors.black)),
                  subtitle: Text("${ecount}",
                      style: TextStyle(color: Colors.red, fontSize: 22)),
                ),
              ),
              Expanded(
                  child: MaterialButton(
                      child: Text(
                        'Reset',
                        style:
                            TextStyle(fontSize: 25, color: Colors.deepPurple),
                      ),
                      onPressed: () {
                        setState(() {
                          icount = 0;
                          ecount = 0;
                        });
                      }))
            ],
          )),
    );
  }
}
