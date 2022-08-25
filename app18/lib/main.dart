import 'package:app18/info.dart';
import 'package:app18/test.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Switch(
              value: Ranglar.value,
              onChanged: (e) {
                setState(() {
                  Ranglar.value = e;
                });
              }),
          title: Text(
            "Karoci nmadir",
            style: TextStyle(color: Ranglar.value ? Ranglar.oq : Ranglar.qora),
          ),
          centerTitle: true,
          elevation: 0,
          actions: [
IconButton(onPressed: (){
  Navigator.push(context, MaterialPageRoute(builder: (context)=>Test2()));
}, icon: Icon(Icons.access_time_filled,))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              width: double.infinity,
              height: 220,
              color: Ranglar.value ? Ranglar.qora : Ranglar.oq,
            ),
            Container(
              width: double.infinity,
              height: 220,
              color: Ranglar.value ? Ranglar.oq : Ranglar.qora,
            ),
            Container(
              width: double.infinity,
              height: 220,
              color: Ranglar.value ? Ranglar.qora : Ranglar.oq,
            ),
            
          ]),
        ),
      );
  }
}