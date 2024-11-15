import 'package:flutter/material.dart';

class CustomCardTipo2 extends StatelessWidget {
  const CustomCardTipo2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: <Widget>[
          const FadeInImage(
            image: NetworkImage(
                'https://cdn.muni.cz/media/rss/29516-2024_7_11__Phd_Awards_titulka.jpg?mode=crop&heightratio=0.5'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            width: double.infinity,
            height: 250,
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 1500),
            fadeOutDuration: Duration(milliseconds: 800),
          ),
          Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: const EdgeInsets.only(top: 15, bottom: 15, right: 8),
            child: const Text('Albaricoque'),
          )
        ],
      ),
    );
  }
}
