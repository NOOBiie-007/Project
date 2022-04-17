import 'package:flutter/material.dart';
import 'package:myapp/pages/home.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Income extends StatefulWidget {
  int icnt, ecnt;
  Income(this.icnt, this.ecnt);

  @override
  _IncomeState createState() => _IncomeState(icnt, ecnt);
}

class _IncomeState extends State<Income> {
  int icnt, ecnt;
  _IncomeState(this.icnt, this.ecnt);
  int _amount;
  String _source;
  String taka;
  DateTime _dateTime;
  DateTime _dateTime2;

  //int _dateTime;
  // int _dateTime2;
  void increase() {
    setState(() {
      icnt = icnt + _amount;
    });
  }

  Future sendData() async {
    final db = Firestore.instance.collection("balanceinfo").add({
      'income': _amount.toString(),
      'Source': _source.toString(),
      'DateTime': _dateTime.toString(),
    });
  }

  Future sendData1() async {
    final db = Firestore.instance.collection("Januaryi").add({
      'income': _amount.toString(),
      'Source': _source.toString(),
      'DateTime': _dateTime.toString(),
    });
  }

  Future sendData2() async {
    final db = Firestore.instance.collection("Februaryi").add({
      'income': _amount.toString(),
      'Source': _source.toString(),
      'DateTime': _dateTime.toString(),
    });
  }

  Future sendData3() async {
    final db = Firestore.instance.collection("Marchi").add({
      'income': _amount.toString(),
      'Source': _source.toString(),
      'DateTime': _dateTime.toString(),
    });
  }

  Future sendData4() async {
    final db = Firestore.instance.collection("Aprili").add({
      'income': _amount.toString(),
      'Source': _source.toString(),
      'DateTime': _dateTime.toString(),
    });
  }

  Future sendData5() async {
    final db = Firestore.instance.collection("Mayi").add({
      'income': _amount.toString(),
      'Source': _source.toString(),
      'DateTime': _dateTime.toString(),
    });
  }

  Future sendData6() async {
    final db = Firestore.instance.collection("Junei").add({
      'income': _amount.toString(),
      'Source': _source.toString(),
      'DateTime': _dateTime.toString(),
    });
  }

  Future sendData7() async {
    final db = Firestore.instance.collection("Julyi").add({
      'income': _amount.toString(),
      'Source': _source.toString(),
      'DateTime': _dateTime.toString(),
    });
  }

  Future sendData8() async {
    final db = Firestore.instance.collection("Augusti").add({
      'income': _amount.toString(),
      'Source': _source.toString(),
      'DateTime': _dateTime.toString(),
    });
  }

  Future sendData9() async {
    final db = Firestore.instance.collection("Septemberi").add({
      'income': _amount.toString(),
      'Source': _source.toString(),
      'DateTime': _dateTime.toString(),
    });
  }

  Future sendData10() async {
    final db = Firestore.instance.collection("Octoberi").add({
      'income': _amount.toString(),
      'Source': _source.toString(),
      'DateTime': _dateTime.toString(),
    });
  }

  Future sendData11() async {
    final db = Firestore.instance.collection("Novemberi").add({
      'income': _amount.toString(),
      'Source': _source.toString(),
      'DateTime': _dateTime.toString(),
    });
  }

  Future sendData12() async {
    final db = Firestore.instance.collection("Decemberi").add({
      'income': _amount.toString(),
      'Source': _source.toString(),
      'DateTime': _dateTime.toString(),
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Income Details'),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Column(children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
          child: TextField(
            keyboardType: TextInputType.number,

            // controller: amountCon,
            onChanged: (str) {
              taka = str;
              _amount = int.parse(taka);
            },
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              prefixIcon: Icon(Icons.attach_money),
              border: OutlineInputBorder(),
              hintText: 'Enter Amount',
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.fromLTRB(10, 0, 10, 5),
          child: TextField(
            // controller: sourceCon,
            onChanged: (str) {
              _source = str;
            },
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(),
              hintText: 'Source',
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
        /*  RaisedButton(
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
              ecnt = ecnt;
              sendData();
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
            } else if (_dateTime2.isAfter(DateTime(2020, DateTime.march, 31)) &&
                _dateTime2.isBefore(DateTime(2020, DateTime.may, 1))) {
              sendData4(); //April
            } else if (_dateTime2.isAfter(DateTime(2020, DateTime.april, 31)) &&
                _dateTime2.isBefore(DateTime(2020, DateTime.june, 1))) {
              sendData5(); //May
            } else if (_dateTime2.isAfter(DateTime(2020, DateTime.may, 31)) &&
                _dateTime2.isBefore(DateTime(2020, DateTime.july, 1))) {
              sendData6(); //June
            } else if (_dateTime2.isAfter(DateTime(2020, DateTime.june, 31)) &&
                _dateTime2.isBefore(DateTime(2020, DateTime.august, 1))) {
              sendData7(); //July
            } else if (_dateTime2.isAfter(DateTime(2020, DateTime.july, 31)) &&
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
                    .isAfter(DateTime(2019, DateTime.october, 31)) &&
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
        // Image.asset("assets/images/income.png"),
      ]),
      bottomNavigationBar: Container(
          color: Colors.grey[300],
          child: Row(
            children: <Widget>[
              Expanded(
                child: ListTile(
                  title: Text('Balance',
                      style: TextStyle(fontSize: 20, color: Colors.black)),
                  subtitle: Text("${icnt}",
                      style: TextStyle(color: Colors.green, fontSize: 20)),
                ),
              ),
              Expanded(
                child: ListTile(
                  title: Text('Expense',
                      style: TextStyle(fontSize: 20, color: Colors.black)),
                  subtitle: Text("${ecnt}",
                      style: TextStyle(color: Colors.red, fontSize: 20)),
                ),
              ),
              Expanded(
                  child: MaterialButton(
                      child: Text('Reset',
                          style: TextStyle(
                              fontSize: 20, color: Colors.deepPurple)),
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
