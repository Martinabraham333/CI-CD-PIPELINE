import 'dart:developer';

import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

int count = 0;

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           SizedBox(height: 100),
          Text(
            'Count : $count',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      count = count + 1;
                    });
                  
                  },
                  child: Icon(Icons.add, size: 40, color: Colors.blue),
                ),
                TextButton(
                  onPressed: () {
                       setState(() {
                      count = count - 1;
                    });
                  },
                  child: Icon(Icons.remove, size: 40, color: Colors.blue),
                ),
              ],
            ),
          ),
         
        ],
      ),
    );
  }
}
