import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_training/freezed_models.dart';

final textEditingControllerProvider =
    StateProvider<TextEditingController>((ref) {
  return TextEditingController();
});

final buttonTextStateProvider = StateProvider<String>((ref) => "検索");

/*
final listTileListProvider =
    StateProvider<List<ListTile>>((ref) => []);

 */

class ListTileListNotifier extends StateNotifier<List<ListTile>> {
  ListTileListNotifier() : super([]);

  void addItem(Items item) {
    final tile = ListTile(
      title: Text(item.name),
      subtitle: Text(item.description ?? ""),
      trailing: Text(item.stargazersCount.toString()),
    );
    state = [...state, tile];
  }

  void removeItem(String itemName) {
    state = [
      for (final tile in state)
        if (tile.title.toString() != itemName) tile
    ];
  }

  void removeAll() {
    state = [];
  }
}

final listTileListProvider =
    StateNotifierProvider<ListTileListNotifier, List<ListTile>>((ref) {
  return ListTileListNotifier();
});
