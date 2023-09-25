import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_training/RiverpodTest.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part "main.freezed.dart";
part "main.g.dart";

@freezed
class RepositoryProf with _$RepositoryProf {
  const factory RepositoryProf({
    required List items,
  }) = _RepositoryProf;

  factory RepositoryProf.fromJson(Map<String, Object?> json) =>
      _$RepositoryProfFromJson(json);
}

@freezed
class Items with _$Items {
  const factory Items({
    required String name,
    String? description,
    required String url,
    required int stargazers_count,
  }) = _Items;
  factory Items.fromJson(Map<String, Object?> json) => _$ItemsFromJson(json);
}

void main() {
  runApp(const ProviderScope(child: MyApp()));
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
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});


  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<ListTile> _repositrys = [];
  final String title = "Search Github Repositorys";
  final TextEditingController _textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _textEditingController.text = "flutter";

    _repositrys.add(ListTile(
      title: TextField(
        controller: _textEditingController,
      ),
      trailing: ElevatedButton(
        onPressed: () async {
          if (_textEditingController.text.trim().isEmpty == false) {
            _repositrys.removeRange(1, _repositrys.length);
            final response = await _getHttp(_textEditingController.text);
            final repository = RepositoryProf.fromJson(response.data);
            for (Map item in repository.items) {
              final data = Items.fromJson(item as Map<String, dynamic>);

              _repositrys.add(ListTile(
                title: Text(data.name),
                subtitle: Text(data.description ?? ""),
                trailing: Text(data.stargazers_count.toString()),
              ));
            }
          }
          _textEditingController.text = "";
          setState(() {});
        },
        child: const Text("検索"),
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: ListTile(
            title: Text(title),
            trailing: ElevatedButton(
              onPressed: () {
                _goPage(const RiverpodTest(), context);
              },
              child: const Text(""),
            ),
          ),
        ),
        body: ListView.builder(
            itemCount: _repositrys.length,
            itemBuilder: (context, index) {
              return _repositrys[index];
            }));
  }
}

Future<Response<dynamic>> _getHttp(String text) async {
  final dio = Dio();
  final response =
      await dio.get("https://api.github.com/search/repositories?q=$text");

  //print(response);
  return response;
}

_goPage(StatefulWidget stf, BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) {
    return stf;
  }));
}
