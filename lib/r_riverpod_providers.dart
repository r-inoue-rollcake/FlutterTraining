import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_training/freezed_models.dart';

final textEditingControllerProvider = Provider<TextEditingController>((ref) {
  return TextEditingController();
});

final buttonTextStateProvider = StateProvider<String>((ref) => "検索");

/*
final listTileListProvider =
    StateProvider<List<ListTile>>((ref) => []);

 */

class ItemListNotifier extends StateNotifier<List<Items>> {
  ItemListNotifier() : super([]);
  void addItem(Items item) {
    state = [...state, item];
  }

  void removeItem(String itemName) {
    state = [
      for (final tile in state)
        if (tile.name != itemName) tile
    ];
  }

  void removeAll() {
    state = [];
  }
}

final itemListProvider = StateNotifierProvider<ItemListNotifier, List<Items>>(
    (ref) => ItemListNotifier());
/*

class ListTileListNotifier extends StateNotifier<List<ListTile>> {
  ListTileListNotifier() : super([]);

  void addItem(ListTile tile) {

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


 */
