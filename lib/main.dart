import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_training/riverpod_test.dart';
import 'r_method_pod.dart';
import 'freezed_models.dart';

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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: ListTile(
            title: Text(title),
            trailing: ElevatedButton(
              onPressed: () {
                goPage(() => const RiverpodTest(), context);
              },
              child: const Text("RiverpodPage"),
            ),
          ),
        ),
        body: Column(
          children: [
            ListTile(
              title: TextField(
                controller: _textEditingController,
              ),
              trailing: ElevatedButton(
                onPressed: () async {
                  if (_textEditingController.text.trim().isEmpty == false) {
                    _repositrys.clear();
                    final response =
                    await getJsonFromHttp(_textEditingController.text);
                    if (response != null) {
                      final repository = RepositoryProf.fromJson(response.data);
                      for (Map item in repository.items) {
                        final data = Items.fromJson(
                            item as Map<String, dynamic>);

                        _repositrys.add(ListTile(
                          title: Text(data.name),
                          subtitle: Text(data.description ?? ""),
                          trailing: Text(data.stargazersCount.toString()),
                        ));
                      }
                    }
                  }
                  _textEditingController.text = "";
                  setState(() {});
                },
                child: const Text("検索"),
              ),
            ),
            Flexible(
              child: ListView.builder(
                  itemCount: _repositrys.length,
                  itemBuilder: (context, index) {
                    return _repositrys[index];
                  }),
            ),
          ],
        ));
  }

  @override
  void dispose() {
    super.dispose();
    _textEditingController.dispose();
  }
}
