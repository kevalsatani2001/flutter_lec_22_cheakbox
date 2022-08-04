import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Prac extends StatefulWidget {
  const Prac({Key? key}) : super(key: key);

  @override
  State<Prac> createState() => _PracState();
}

class _PracState extends State<Prac> {
  @override
  bool is_checked = false;
  String ans = "";
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Switch(
              value: is_checked,
              onChanged: (v) {
                setState(() {
                  is_checked = v;
                  if (is_checked == false) {
                    exit(0);
                  }
                });
              })
        ],
        title: Text("Check Box"),
      ),
      body: Column(children: [
        CheckboxListTile(
            title: Text("Hello"),
            checkColor: Colors.amber,
            value: is_checked,
            onChanged: (value) {
              setState(() {
                is_checked = value!;
                if (is_checked == true) {
                  ans = "Hello";
                } else {
                  ans = "";
                }
              });
            }),
        Text(
          "$ans",
          style: TextStyle(fontSize: 50),
        )
      ]),
    );
  }
}
