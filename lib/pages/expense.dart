import 'package:flutter/material.dart';
import 'package:myapp/pages/home.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Expense extends StatefulWidget {
  int icnt, ecnt;
  Expense(this.icnt, this.ecnt);
  @override
  _ExpenseState createState() => _ExpenseState(icnt, ecnt);
}

class _ExpenseState extends State<Expense> {
  int icnt, ecnt;
  _ExpenseState(this.icnt, this.ecnt);

  int amo;
  String tak;
  String des;
  DateTime _dateTime;
  DateTime _dateTime2;
  void increase() {
    setState(() {
      ecnt = ecnt + amo;
      icnt = icnt - amo;
    });
  }

  Future senddata() async {
    final db = Firestore.instance.collection("expenseinfo").add({
      'expense': amo.toString(),
      'payment': des.toString(),
      'DateTime': _dateTime.toString(),
    });
  }

  Future sendData1() async {
    final db = Firestore.instance.collection("Januarye").add({
      'expense': amo.toString(),
      'payment': des.toString(),
      'DateTime': _dateTime.toString(),
    });
  }

  Future sendData2() async {
    final db = Firestore.instance.collection("Februarye").add({
      'expense': amo.toString(),
      'payment': des.toString(),
      'DateTime': _dateTime.toString(),
    });
  }

  Future sendData3() async {
    final db = Firestore.instance.collection("Marche").add({
      'expense': amo.toString(),
      'payment': des.toString(),
      'DateTime': _dateTime.toString(),
    });
  }

  Future sendData4() async {
    final db = Firestore.instance.collection("Aprile").add({
      'expense': amo.toString(),
      'payment': des.toString(),
      'DateTime': _dateTime.toString(),
    });
  }

  Future sendData5() async {
    final db = Firestore.instance.collection("Maye").add({
      'expense': amo.toString(),
      'payment': des.toString(),
      'DateTime': _dateTime.toString(),
    });
  }

  Future sendData6() async {
    final db = Firestore.instance.collection("Junee").add({
      'expense': amo.toString(),
      'payment': des.toString(),
      'DateTime': _dateTime.toString(),
    });
  }

  Future sendData7() async {
    final db = Firestore.instance.collection("Julye").add({
      'expense': amo.toString(),
      'payment': des.toString(),
      'DateTime': _dateTime.toString(),
    });
  }

  Future sendData8() async {
    final db = Firestore.instance.collection("Auguste").add({
      'expense': amo.toString(),
      'payment': des.toString(),
      'DateTime': _dateTime.toString(),
    });
  }

  Future sendData9() async {
    final db = Firestore.instance.collection("Septembere").add({
      'expense': amo.toString(),
      'payment': des.toString(),
      'DateTime': _dateTime.toString(),
    });
  }

  Future sendData10() async {
    final db = Firestore.instance.collection("Octobere").add({
      'expense': amo.toString(),
      'payment': des.toString(),
      'DateTime': _dateTime.toString(),
    });
  }

  Future sendData11() async {
    final db = Firestore.instance.collection("Novembere").add({
      'expense': amo.toString(),
      'payment': des.toString(),
      'DateTime': _dateTime.toString(),
    });
  }

  Future sendData12() async {
    final db = Firestore.instance.collection("Decembere").add({
      'expense': amo.toString(),
      'payment': des.toString(),
      'DateTime': _dateTime.toString(),
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Expense Details', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
            child: TextField(
              onChanged: (str) {
                tak = str;
                amo = int.parse(tak);
              },
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                prefixIcon: Icon(Icons.money_off),
                border: OutlineInputBorder(),
                hintText: 'Enter Amount',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 10, 5),
            child: TextField(
              onChanged: (str) {
                des = str;
              },
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(),
                hintText: 'Payment Description',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 10, 5),
            child: TextField(
              onChanged: (str) {
                _dateTime = DateTime.parse(str);
                _dateTime2 = DateTime.parse(str);
              },
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                prefixIcon: Icon(Icons.date_range),
                border: OutlineInputBorder(),
                hintText: 'Date: YY-MM-DD',
              ),
            ),
          ),

          /* RaisedButton(
            child: Text('Pick Date',
                style: TextStyle(color: Colors.indigo, fontSize: 20)),
            color: Colors.white,
            onPressed: () {
              showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2001),
                      lastDate: DateTime(2222))
                  .then((date) {
                setState(() {
                  _dateTime = date;
                  _dateTime2 = date;
                });
              });
            },
          ),*/
          RaisedButton(
            child: Text('Save',
                style: TextStyle(color: Colors.indigo, fontSize: 20)),
            color: Colors.white,
            onPressed: () {
              setState(() {
                increase();
                senddata();
              });
              if (_dateTime2.isAfter(DateTime(2019, DateTime.december, 31)) &&
                  _dateTime2.isBefore(DateTime(2020, DateTime.february, 1))) {
                sendData1(); //january
              } else if (_dateTime2
                      .isAfter(DateTime(2020, DateTime.january, 31)) &&
                  _dateTime2.isBefore(DateTime(2020, DateTime.march, 1))) {
                sendData2(); //february
              } else if (_dateTime2
                      .isAfter(DateTime(2020, DateTime.february, 31)) &&
                  _dateTime2.isBefore(DateTime(2020, DateTime.april, 1))) {
                sendData3(); //March
              } else if (_dateTime2
                      .isAfter(DateTime(2020, DateTime.march, 31)) &&
                  _dateTime2.isBefore(DateTime(2020, DateTime.may, 1))) {
                sendData4(); //April
              } else if (_dateTime2
                      .isAfter(DateTime(2020, DateTime.april, 31)) &&
                  _dateTime2.isBefore(DateTime(2020, DateTime.june, 1))) {
                sendData5(); //May
              } else if (_dateTime2.isAfter(DateTime(2020, DateTime.may, 31)) &&
                  _dateTime2.isBefore(DateTime(2020, DateTime.july, 1))) {
                sendData6(); //June
              } else if (_dateTime2
                      .isAfter(DateTime(2020, DateTime.june, 31)) &&
                  _dateTime2.isBefore(DateTime(2020, DateTime.august, 1))) {
                sendData7(); //July
              } else if (_dateTime2
                      .isAfter(DateTime(2020, DateTime.july, 31)) &&
                  _dateTime2.isBefore(DateTime(2020, DateTime.september, 1))) {
                sendData8(); //August
              } else if (_dateTime2
                      .isAfter(DateTime(2020, DateTime.august, 31)) &&
                  _dateTime2.isBefore(DateTime(2020, DateTime.october, 1))) {
                sendData9(); //September
              } else if (_dateTime2
                      .isAfter(DateTime(2020, DateTime.september, 31)) &&
                  _dateTime2.isBefore(DateTime(2020, DateTime.november, 1))) {
                sendData10(); //October
              } else if (_dateTime2
                      .isAfter(DateTime(2020, DateTime.october, 31)) &&
                  _dateTime2.isBefore(DateTime(2020, DateTime.december, 1))) {
                sendData11(); //November
              } else if (_dateTime2
                      .isAfter(DateTime(2020, DateTime.november, 31)) &&
                  _dateTime2.isBefore(DateTime(2021, DateTime.january, 1))) {
                sendData12(); //December
              }

              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => Homepage(icnt, ecnt)));
            },
          ),
        ],
      ),
      bottomNavigationBar: Container(
          color: Colors.grey[300],
          child: Row(
            children: <Widget>[
              Expanded(
                child: ListTile(
                  title: Text('Balance',
                      style: TextStyle(fontSize: 22, color: Colors.black)),
                  subtitle: Text("${icnt}",
                      style: TextStyle(color: Colors.green, fontSize: 22)),
                ),
              ),
              Expanded(
                child: ListTile(
                  title: Text('Expense',
                      style: TextStyle(fontSize: 22, color: Colors.black)),
                  subtitle: Text("${ecnt}",
                      style: TextStyle(color: Colors.red, fontSize: 22)),
                ),
              ),
              Expanded(
                  child: MaterialButton(
                      child: Text(
                        'Reset',
                        style:
                            TextStyle(fontSize: 20, color: Colors.deepPurple),
                      ),
                      onPressed: () {
                        setState(() {
                          icnt = 0;
                          ecnt = 0;
                        });
                      }))
            ],
          )),
    );
  }
}
