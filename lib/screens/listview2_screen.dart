import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  final options = const ['Targaruen', 'Stark', 'Lannister', 'Baratheon'];

  const Listview2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Listview Tipo 1'),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  leading: const Icon(Icons.arrow_forward_ios_outlined),
                  title: Text(options[index]),
                ),
            separatorBuilder: (context, index) => const Divider(),
            itemCount: options.length));
  }
}
