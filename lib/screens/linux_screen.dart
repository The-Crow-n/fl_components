import 'package:fl_components/widgets/custom_card_tipo_1.dart';
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
          title: const Text('Card Widget'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCardTipo1(),
            SizedBox(height: 10,),
            CustomCardTipo2(imageUrl: 'https://cdn.muni.cz/media/rss/29516-2024_7_11__Phd_Awards_titulka.jpg?mode=crop&heightratio=0.5', nombre: 'Albaricoque',),
            SizedBox(height: 10,),
            CustomCardTipo2(imageUrl: 'https://images.pexels.com/photos/443446/pexels-photo-443446.jpeg?cs=srgb&dl=pexels-eberhardgross-443446.jpg&fm=jpg', nombre: 'Cerveza',),
            SizedBox(height: 10,),
            CustomCardTipo2(imageUrl: 'https://images.pexels.com/photos/807598/pexels-photo-807598.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', nombre: 'Payaso',),
            SizedBox(height: 10,),
            CustomCardTipo2(imageUrl: 'https://images.pexels.com/photos/33109/fall-autumn-red-season.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',),
            SizedBox(height: 10,),
            CustomCardTipo2(imageUrl: 'https://images.pexels.com/photos/38136/pexels-photo-38136.jpeg', nombre: 'Rótula',),
          ],
        ));
  }
}