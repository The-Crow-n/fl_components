import 'package:fl_components/widgets/custom_card_tipo_2.dart';
import 'package:flutter/material.dart';

class LinuxScreen extends StatelessWidget{
  final String imageURL;
  final String description;
  final String title;

  const LinuxScreen({super.key, required this.imageURL, required this.description, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: [
            CustomCardTipo2(imageUrl: this.imageURL, nombre: description)
          ],
        ));
  }
}