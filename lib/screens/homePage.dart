import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  String title;
  MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        centerTitle: true,
        leading: Icon(Icons.info),
        actions: [
          Icon(Icons.add),
          Icon(Icons.person)
        ],
      ),
      body: Center(
        child: Column(children: [
          Container(
            height: 20,
          ),
          Container(
            width: 100,
            height: 100,
            child: Image.asset("assets/avatar.png"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.email, color: Colors.deepOrange),
                labelText: "Email",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock, color: Colors.deepOrange),
                labelText: "password",
              ),
            ),
          ),
          Container(
            height: 20,
          ),
          CupertinoButton.filled(
            onPressed: () {
              print("loggedin");
            },
            child: const Text('login'),
          ),
        ]),
      ),
    );
  }
}
