import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardTipo1 extends StatelessWidget {
  const CustomCardTipo1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(
              Icons.photo_album_outlined,
              color: AppTheme.primary,
            ),
            title: Text('Titulo de la tarjeta'),
            subtitle: Text(
                'Incididunt irure aute consectetur nostrud sunt culpa est esse sint labore in commodo. Velit officia voluptate nulla nulla commodo aliquip consectetur do eu exercitation cillum ut est veniam. Ex culpa labore laborum reprehenderit aliqua officia laborum in sunt ipsum excepteur est.'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(onPressed: () {}, child: const Text('Cancelar')),
              Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: TextButton(
                      onPressed: () {}, child: const Text('Aceptar'))),
            ],
          )
        ],
      ),
    );
  }
}
