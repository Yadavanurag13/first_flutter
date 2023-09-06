import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: "My App",
        theme: ThemeData(
          primarySwatch: Colors.orange,
          brightness: Brightness.light,
        ),
        home: const HomePage(),
    );
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(mytext,style: const TextStyle(
              fontSize: 22.0
            ),),
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
      body: _bodyWideget(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {_changeText();},
        child: Icon(Icons.add),
      ),
    );
  }
}



