import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text("Mostrar alerta", style: TextStyle(fontSize: 20),),
            )
            ),
        ),
        floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.close),
            onPressed: () => Navigator.pop(context)));
  }
}
