import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stateful Widget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Counter: $counter'),
            TextButton(
            onPressed:(){
              setState(() {
                counter++; /*ค่าเดิมเพิ่มอีก1 เก็บที่เดิม ค่าแรกที่ตั้งคือ0 ตรงint count บรรทัด11*/
              });
            },                           /*ตรวจสอบการกดปุ่ม*/
            child: Text('Click Me'),
            style: TextButton.styleFrom(
              primary: Colors.white,
              backgroundColor: Colors.lightBlue,
              padding: const EdgeInsets.all(10.0),
            ),
            ),
          ],
        ),
      ),
    );
  }
}