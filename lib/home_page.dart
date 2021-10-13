import 'dart:math';

import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var amount = 0, percentage = 0, num3 = 0, years = 0;
  num result = 0;
  final TextEditingController t1 = TextEditingController(text: "");
  final TextEditingController t2 = TextEditingController(text: "");
  final TextEditingController t3 = TextEditingController(text: "");

  void docalculate() {
    setState(() {
      amount = int.parse(t1.text);
      percentage = int.parse(t2.text);
      years = int.parse(t3.text);

      result = amount * pow((1 + (percentage / 100)), years);
    });
  }

  void doreset() {
    setState(() {
      t1.clear();
      t2.clear();
      t3.clear();
      result = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" Compound Interest Calculator"),
      ),
      body: Container(
        padding: const EdgeInsets.all(40.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "$result",
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.teal,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 60),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    hintText: "How Much Amount?",
                    labelText: "Amount",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8))),
                controller: t1,
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    hintText: "Enter Your percentage",
                    labelText: "Percentage",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8))),
                controller: t2,
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    hintText: "For How Many Years?",
                    labelText: "Years",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8))),
                controller: t3,
              ),
              SizedBox(
                height: 20,
              ),
              Padding(padding: const EdgeInsets.only(top: 25.0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    child: Text("Calculate"),
                    onPressed: docalculate,
                  ),
                  ElevatedButton(
                    child: Text("Reset"),
                    onPressed: doreset,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
