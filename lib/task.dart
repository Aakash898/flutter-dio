import 'package:flutter/material.dart';

class MyDynamicList extends StatefulWidget {
  @override
  _MyDynamicListState createState() => _MyDynamicListState();
}

class _MyDynamicListState extends State<MyDynamicList> {
  List<Widget> textFields = [];

  void addTextField() {
    setState(() {
      textFields.add(
        Row(
          children: [
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(labelText: 'Enter Value'),
              ),
            ),
            IconButton(
              icon: Icon(Icons.remove),
              onPressed: () {
                removeTextField(textFields.length - 1);
              },
            ),
          ],
        ),
      );
    });
  }

  void removeTextField(int index) {
    setState(() {
      textFields.removeAt(index);
    });
  }

  @override
  void initState() {
    super.initState();
    addTextField();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dynamic TextFields Example'),
      ),
      body: Column(
        children: [
          Column(children: textFields),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(

                icon: Icon(Icons.add),
                onPressed: () {
                  addTextField();
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}