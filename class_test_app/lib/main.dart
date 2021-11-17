import 'dart:math';

import 'package:class_test_app/NavigationDrawer/navigation_drawer_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator App',
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: const MyHomePage(title: 'Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late String firstNUm;
  late String secondNum;
  late String result;
  late String operation;
  late String textToDisplay;
  late String history;

  Widget buildButton(String buttonText) {
    return Expanded(
        child: OutlinedButton(
      child: Text(buttonText,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
      style: ButtonStyle(
        padding: MaterialStateProperty.all(const EdgeInsets.all(24)),
      ),
      onPressed: () {},
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              // new Container(
              //     alignment: Alignment.centerRight,
              //     padding: const EdgeInsets.symmetric(
              //         vertical: 36.0, horizontal: 12.0),
              //     child: new Text(
              //       textToDisplay,
              //       style: const TextStyle(
              //           fontSize: 48.0, fontWeight: FontWeight.bold),
              //     )),
              const Expanded(child: Divider()),
              Column(
                children: [
                  Row(
                    children: [
                      buildButton("7"),
                      buildButton("8"),
                      buildButton("9"),
                      buildButton("/"),
                    ],
                  ),
                  Row(
                    children: [
                      buildButton("4"),
                      buildButton("5"),
                      buildButton("6"),
                      buildButton("*"),
                    ],
                  ),
                  Row(
                    children: [
                      buildButton("1"),
                      buildButton("2"),
                      buildButton("3"),
                      buildButton("-"),
                    ],
                  ),
                  Row(
                    children: [
                      buildButton("."),
                      buildButton("0"),
                      buildButton("^2"),
                      buildButton("+"),
                    ],
                  ),
                  Row(
                    children: [
                      buildButton("CLEAR"),
                      buildButton("="),
                    ],
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
