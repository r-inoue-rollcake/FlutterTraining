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
    final buttonTextNotifier = ref.read(buttonTextStateProvider.notifier);
    final textEditingControllerNotifier =
        ref.read(textEditingControllerProvider);
    final itemList = ref.read(itemListProvider);
    final itemListNotifier = ref.read(itemListProvider.notifier);

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: const Text("RiverpodTest")),
          body: Column(
            children: [
              ListTile(
                title: TextField(
                  controller: ref.watch(textEditingControllerProvider),
                  decoration: const InputDecoration(
                      hintText: "Search Github Repositories"),
                ),
                trailing: ElevatedButton(
                  onPressed: () async {
                    if (ref.read(textEditingControllerProvider).text.trim() !=
                        "") {
                      buttonTextNotifier.state = "loading";
                      itemListNotifier.removeAll();

                      Response<dynamic>? response = await getJsonFromHttp(
                          ref.read(textEditingControllerProvider).text);

                      if (response != null) {
                        for (final item
                            in RepositoryProf.fromJson(response.data).items) {
                          final data = Items.fromJson(item);

                          ref.read(itemListProvider.notifier).addItem(data);
                        }
                      } else {
                        itemListNotifier.addItem(const Items(
                            name: "読み込み失敗", url: "", stargazersCount: 0));
                      }

                      textEditingControllerNotifier.text = "";
                      buttonTextNotifier.state = "検索";
                    }
                  },
                  child: Text(ref.watch(buttonTextStateProvider).toString()),
                ),
              ),
              Flexible(
                child: ListView.builder(
                    itemCount: ref.watch(itemListProvider).length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(itemList[index].name),
                        subtitle: Text(itemList[index].description ?? ""),
                        trailing:
                            Text(itemList[index].stargazersCount.toString()),
                      );
                    }),
              ),
            ],
          )),
    );
  }
}
