import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class OtheWidget extends StatefulWidget {
  const OtheWidget({Key? key}) : super(key: key);

  @override
  State<OtheWidget> createState() => _OtheWidgetState();
}

class _OtheWidgetState extends State<OtheWidget> {
  bool isChecked = false;
  bool isChecked1 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                isChecked = !isChecked;
              });
            },
            child: Row(
              children: [
                Checkbox(
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                  value: isChecked,
                ),
                const Text("cheak List"),
              ],
            ),
          ),
          CheckboxListTile(
            onChanged: (bool? value) {
              setState(() {
                isChecked1 = value!;
              });
            },
            value: isChecked1,
            title: const Text("data"),
          ),
        ],
      ),
    );
  }
}
