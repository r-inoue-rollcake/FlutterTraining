import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final myProvider = StateProvider<int>((ref) => 0);

class RiverpodTest extends ConsumerWidget {
  const RiverpodTest({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int value = ref.watch(myProvider);
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: const Text("RiverpodTest")),
          body: ListView(children: [
            ElevatedButton(
                onPressed: () {
                  ref.read(myProvider.notifier).update((state) => state + 1);
                },
                child: Text(value.toString()))
          ])),
    );
  }
}
