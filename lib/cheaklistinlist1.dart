import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyCheak extends StatefulWidget {
  const MyCheak({Key? key}) : super(key: key);

  @override
  State<MyCheak> createState() => _MyCheakState();
}

class _MyCheakState extends State<MyCheak> {
  bool isChecked = false;
  bool isChecked1 = false;

  List<String> checklist = ["A", "B", "c", "D", "E", "F"];
  List<String> selectCheaklist = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Switch(
              activeColor: Colors.red,
              value: isChecked1,
              onChanged: (v) {
                setState(() {
                  isChecked1 = v;
                });
              })
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: checklist.length,
                itemBuilder: (context, index) => CheckboxListTile(
                      value: selectCheaklist.contains(checklist[index]),
                      title: Text(checklist[index]),
                      onChanged: (v) {
                        if (selectCheaklist.contains(checklist[index])) {
                          setState(() {
                            selectCheaklist.remove(checklist[index]);
                          });
                        } else {
                          setState(() {
                            selectCheaklist.add(checklist[index]);
                          });
                        }
                        print(selectCheaklist);
                      },
                    )),
          ),
          Row(
            children: [
              Checkbox(
                value: isChecked,
                onChanged: (v) {
                  setState(() {
                    isChecked = v!;
                  });
                },
              ),
              const Text("I accept t&c"),
            ],
          ),
          isChecked
              ? const SizedBox()
              : const Text(
                  "Please accept t&c",
                  style: TextStyle(color: Colors.red),
                ),
          ElevatedButton(
              onPressed: isChecked ? () {} : null, child: const Text("Submit")),
        ],
      ),
    );
  }
}
