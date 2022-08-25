import 'package:flutter/material.dart';
import 'package:flutter_app2/sahifa1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);
  @override
  State<HomePage> createState() => _HomePAgeState();}

class _HomePAgeState extends State<HomePage> {  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
        child: InkWell(
          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> Sahifa1())),
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return ListTile(
                tileColor: Colors.teal,
                leading: Container(
                  width: 100,
                  height: 80,
                  color: Colors.yellow,
                  child: const Icon(Icons.mail),
                ),
                title: const Text("Micheal Jekson"),
                subtitle: const Text("Hello bro"),
              );
            },
          ),
        ),
      ),
    );
  }
}