import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_training/RiverpodTest.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part "main.freezed.dart";
part "main.g.dart";

@freezed
class RepositoryProf with _$RepositoryProf {
  const factory RepositoryProf({
    required List items,

  }) = _RepositoryProf;

  factory RepositoryProf.fromJson(Map<String,Object?> json) => _$RepositoryProfFromJson(json);
}


void main() {


  runApp(
      ProviderScope(
          child: MyApp()
      )
  );
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
  List<ListTile> _repositrys = [];
  String title = "Home";
  TextEditingController _textEditingController = TextEditingController();




  @override
  void initState() {
    super.initState();
    _textEditingController.text = "flutter";
    setState(() {
      _repositrys.add(ListTile(
        title: TextField(controller: _textEditingController,),
        trailing: ElevatedButton(onPressed: () async {
          _repositrys.removeRange(1, _repositrys.length);


          final response = await getHttp(_textEditingController.text);
          var repository = RepositoryProf.fromJson(response.data);
          print("complete");
          //print(repository.items[0]);

          for (Map item in repository.items) {
            _repositrys.add(
                ListTile(
                  title: Text(item["name"] ?? ""),
                  subtitle: Text(item["description"] ?? ""),
                  trailing: Text(item["stargazers_count"].toString() ),
                ));
          }

/*
        for (int i = 0; i<100 || i < repository.items.length ; i++) {
          Map item = repository.items[i];
          _repositrys.add(
              ListTile(
                title: Text(item["name"]),
                subtitle: Text(item["description"]),
                trailing: Text(item["stargazers_count"].toString()),
              ));
        }


 */

        },
          child: Text("検索"),
        ),
      )
      );
    });

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ListTile(
          title: Text(title),
          trailing: ElevatedButton(
            onPressed: (){
              goPage(RiverpodTest(), context);

            },
            child: Text(""),
          ),
        ),
      ),
      body:


          ListView(
            children: _repositrys,
          ),
    );
  }

}

final dio = Dio();

Future<Response<dynamic>> getHttp(String text)async{
  final response = await dio.get("https://api.github.com/search/repositories?q=$text") ;

  //print(response);
  return response;

}


goPage(StatefulWidget stf,BuildContext context){
  Navigator.push(context,
      MaterialPageRoute(builder: (context){return stf;})
  );
}



