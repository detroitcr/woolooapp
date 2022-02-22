import 'package:flutter/material.dart';

class MyCounter extends StatefulWidget {
  const MyCounter({Key? key}) : super(key: key);

  @override
  _MyCounterState createState() => _MyCounterState();
}

class _MyCounterState extends State<MyCounter> {
  int count = 0;

  void increament() {
    count++;
  }
  void decreament() {
    count--;
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          children: [
            MaterialButton(
              child: Text(
                count.toString(),
                style: TextStyle(fontSize: 30),
              ),
              onPressed: () {
                setState(() {
                  increament();
                });
              },
            ),
            MaterialButton(
              child: Text(
                count.toString(),
                style: TextStyle(fontSize: 30),
              ),
              onPressed: () {
                setState(() {
                  decreament();
                });
              },
            )
          ],
        ),
      ),
    );
  }
}