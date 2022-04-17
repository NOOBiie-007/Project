import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
//import 'package:myapp/pages/income.dart';
//import 'package:myapp/pages/expense.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Oct extends StatefulWidget {
  @override
  _OctState createState() => _OctState();
}

class _OctState extends State<Oct> {
  int totalIncome = 0;
  totalmoney() async {
    int total = 0;
    var snapshot =
        await Firestore.instance.collection("Octobere").getDocuments();

    setState(() {
      if (snapshot == null) totalIncome = 0;
      snapshot.documents.forEach((doc) {
        total += int.parse(doc.data['expense']);
      });
      totalIncome = total;
    });
  }

  void initState() {
    this.totalmoney();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expense in October"),
        backgroundColor: Colors.purple,
      ),
      body: StreamBuilder(
        stream: Firestore.instance.collection("Octobere").snapshots(),
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
                        style: TextStyle(color: Colors.black, fontSize: 20)),
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
      bottomNavigationBar: Container(
          color: Colors.grey[300],
          child: ListTile(
            title: Text('        Total Expense In October',
                style: TextStyle(color: Colors.black, fontSize: 22)),
            subtitle: Text("                       ${totalIncome}",
                style: TextStyle(color: Colors.red, fontSize: 22)),
          )),
    );
  }
}
