import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class list extends StatefulWidget {
  const list({super.key});

  @override
  State<list> createState() => _listState();
}

class _listState extends State<list> {
  var arrname = ["alka", "komal", "anu", "shilpa"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(
          child: Text(
            "listview",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
              height: 100,
              decoration: BoxDecoration(
                color: Colors.cyan,
              ),
              child: Text(arrname[index]));
        },
        itemCount: arrname.length,
      ),
    );
  }
}
