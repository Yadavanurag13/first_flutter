import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "My App",
      home: HomePage());
  }
}
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String mytext = "Hello World";

  void _changeText(){
    setState(() {
      if(mytext.startsWith("H")) {
        mytext = "Welcome to my app";
      }else{
        mytext = "Hello World";
      }
    });
  }
  Widget _bodyWideget(){

    var onPressed;
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          children: <Widget>[
            Text(mytext),
            ElevatedButton(onPressed: onPressed, child: Text("Click"),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: _bodyWideget()
    );
  }
}



