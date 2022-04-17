import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:myapp/pages/income.dart';
import 'package:myapp/pages/expense.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Yearly extends StatefulWidget {
  @override
  _YearlyState createState() => _YearlyState();
}

class _YearlyState extends State<Yearly> {
  Future deleteData() {
    var firestore = Firestore.instance
        .collection("balanceinfo")
        .getDocuments()
        .then((snapshot) {
      for (DocumentSnapshot doc in snapshot.documents) {
        doc.reference.delete();
      }
    });
  }

  Future deletedata() {
    var firestore = Firestore.instance
        .collection("expenseinfo")
        .getDocuments()
        .then((snapshot) {
      for (DocumentSnapshot doc in snapshot.documents) {
        doc.reference.delete();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Income-Expense Details"),
        backgroundColor: Colors.purple,
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.delete,
                color: Colors.white,
              ),
              onPressed: () {
                setState(() {
                  deleteData();
                });

                ///showdialog
              }),
          IconButton(
              icon: Icon(
                Icons.delete_outlined,
                color: Colors.white,
              ),
              onPressed: () {
                setState(() {
                  deletedata();
                });

                ///showdialog
              }),
        ],
      ),
      body: PageView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          StreamBuilder(
            stream: Firestore.instance.collection("balanceinfo").snapshots(),
            builder: (_, snapshot) {
              if (!snapshot.hasData) {
                return Center(
                  child: Text("Loading"),
                );
              } else {
                return ListView.builder(
                  itemCount: snapshot.data.documents.length,
                  itemBuilder: (_, index) {
                    DocumentSnapshot data = snapshot.data.documents[index];
                    return Card(
                      child: ListTile(
                        leading: Text(data["income"],
                            style:
                                TextStyle(color: Colors.green, fontSize: 40)),
                        title: Text(data["Source"],
                            style:
                                TextStyle(color: Colors.black, fontSize: 20)),
                        subtitle: Text(data["DateTime"],
                            style: TextStyle(color: Colors.grey, fontSize: 20)),
                        trailing: Icon(Icons.money),
                      ),
                    );
                  },
                );
              }
            },
          ),
          StreamBuilder(
            stream: Firestore.instance.collection("expenseinfo").snapshots(),
            builder: (_, snapshot) {
              if (!snapshot.hasData) {
                return Center(
                  child: Text("Loading"),
                );
              } else {
                return ListView.builder(
                  itemCount: snapshot.data.documents.length,
                  itemBuilder: (_, index) {
                    DocumentSnapshot data = snapshot.data.documents[index];
                    return Card(
                      child: ListTile(
                        title: Text(data["payment"],
                            style:
                                TextStyle(color: Colors.black, fontSize: 20)),
                        subtitle: Text(data["DateTime"],
                            style: TextStyle(color: Colors.grey, fontSize: 20)),
                        leading: Text(data["expense"],
                            style: TextStyle(color: Colors.red, fontSize: 40)),
                        trailing: Icon(Icons.money_sharp),
                      ),
                    );
                  },
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
