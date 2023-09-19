import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const Home(title: 'GitHub Repositrys'),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key, this.title = "Home"});
  final String title;

  @override
  State<Home> createState() => _HomeState(title: title);
}

class _HomeState extends State<Home> {
  _HomeState({required this.title});
  List<ListTile> _repositrys = [ListTile(title: Text("RepositoryName"),subtitle: Text("about"),trailing: Text("123"),)];
  String title = "Home";
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title),),
      body: ListView(
        children: _repositrys,
      ),
    );
  }
}