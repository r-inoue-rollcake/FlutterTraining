import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_training/freezed_models.dart';
import 'package:flutter_training/r_method_pod.dart';
import 'package:flutter_training/r_riverpod_providers.dart';

class RiverpodTest extends ConsumerWidget {
  const RiverpodTest({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<ListTile> listTileList = ref.watch(listTileListProvider);

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: const Text("RiverpodTest")),
          body: Column(
            children: [
              ListTile(
                title: TextField(
                  controller: ref.watch(textEditingControllerProvider),
                ),
                trailing: ElevatedButton(
                  onPressed: () async {
                    if (ref.read(textEditingControllerProvider).text.trim() !=
                        "") {
                      ref.read(myProvider.notifier).state = "loading";
                      listTileList.clear();
                      Response<dynamic> response = await getJsonFromHttp(
                          ref.read(textEditingControllerProvider).text);
                      for (final item
                          in RepositoryProf.fromJson(response.data).items) {
                        final data = Items.fromJson(item);

                        ref
                            .read(listTileListProvider.notifier)
                            .state
                            .add(ListTile(
                              title: Text(data.name),
                              subtitle: Text(data.description ?? ""),
                              trailing: Text(data.stargazersCount.toString()),
                            ));
                      }

                      ref.read(myProvider.notifier).state = "検索";
                    }
                  },
                  child: Text(ref.watch(myProvider).toString()),
                ),
              ),
              Flexible(
                  child: ListView.builder(
                itemCount: listTileList.length,
                itemBuilder: (context, index) {
                  return listTileList[index];
                },
              )),
            ],
          )),
    );
  }
}
