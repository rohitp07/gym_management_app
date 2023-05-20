import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'newsdatabase.dart';

class NewsView extends StatefulWidget {
  NewsView({Key? key, required this.country, required this.db})
      : super(key: key);
  Map country;
  Database db;
  @override
  _ViewState createState() => _ViewState();
}

class _ViewState extends State<NewsView> {
  TextEditingController nameController = new TextEditingController();
  TextEditingController codeController = new TextEditingController();
  @override
  void initState() {
    super.initState();
    print(widget.country);
    nameController.text = widget.country['News Heading'];
    codeController.text = widget.country['News Description'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF63447E),
        title: Text("News View"),
        actions: [
          IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                widget.db.delete(widget.country["id"]);
                Navigator.pop(context, true);
              })
        ],
      ),
      backgroundColor: Color(0xFF63447E),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              TextFormField(
                style: TextStyle(color: Colors.white),
                decoration: inputDecoration("News Heading"),
                controller: nameController,
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                style: TextStyle(color: Colors.white),
                decoration: inputDecoration("News Description"),
                controller: codeController,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        color: Colors.transparent,
        child: BottomAppBar(
          color: Colors.transparent,
          child: ElevatedButton(
              onPressed: () {
                widget.db.update(widget.country['id'], nameController.text,
                    codeController.text);
                Navigator.pop(context, true);
              },
              child: Text(
                "Save",
                style: TextStyle(color: Color(0xff63448a)),
              ),
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFF2CB41),
              )),
        ),
      ),
    );
  }

  InputDecoration inputDecoration(String labelText) {
    return InputDecoration(
      focusColor: Colors.white,
      labelStyle: TextStyle(color: Colors.white),
      labelText: labelText,
      fillColor: Colors.white,
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25.0),
        borderSide: BorderSide(color: Colors.white),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25.0),
        borderSide: BorderSide(
          color: Colors.black,
          width: 2.0,
        ),
      ),
    );
  }
}
