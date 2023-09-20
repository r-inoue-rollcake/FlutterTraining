import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final helloWorldProvider = Provider((_){return "Hello world";});

class RiverpodTest extends ConsumerWidget {
  const RiverpodTest({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final String value = ref.watch(helloWorldProvider);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title:const Text("RiverpodTest")),
        body:Center(
          child:Text(value)
        )
      ),

    );
  }
}
