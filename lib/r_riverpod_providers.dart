import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

StateProvider<TextEditingController> textEditingControllerProvider =
    StateProvider<TextEditingController>((ref) => TextEditingController());
StateProvider<List<ListTile>> listTileListProvider =
    StateProvider<List<ListTile>>((ref) => [
          const ListTile(
            title: Text("サンプル"),
          )
        ]);
final myProvider = StateProvider<String>((ref) => "検索");
